<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    //
    protected $guarded = [];

    public function address()
    {
        return $this->belongsTo(UserAddress::class,'shipping_address_id');
    }

    public function client()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function publisher()
    {
        return $this->belongsTo(User::class,'publisher_id');
    }

    public function subOrders()
    {
        return $this->hasMany(Orders::class,'main_order_id');
    }

    public function items()
    {
        return $this->hasMany(OrderItems::class,'order_id');
    }

    public function coupon()
    {
        return $this->belongsTo(Coupons::class,'coupun_id');
    }

    public function discount()
    {
        $discount = 0;
        if ($this->coupon != '') {
            if ($this->coupon->canUse($this->id) > 0) {
                $discount = $this->coupon->canUse($this->id)['discount'];
            }
        }
        return $discount;
    }

    public function totals()
    {
        $total = 0;
        $discount = 0;
        $netTotal = 0;
        
        if ($this->main_order_id == 0) {
            foreach ($this->subOrders as $subOrder) {
                // $total += $subOrder->total;
                // $discount = $this->discount();
                // $netTotal = $total - $this->discount();
            }
        }
        //  else {
        //     $totals = [
        //         'total' => $this->items()->sum('total'),
        //         'discount' => $this->discount(),
        //         'netTotal' => $this->items()->sum('total') - $this->discount()
        //     ];
        // }
        return [
            'total' => $total,
            'discount' => $discount,
            'netTotal' => $netTotal
        ];
    }

    public function hasHardCopy()
    {
        $data = '0';
        if ($this->main_order_id == '0') {
            foreach ($this->subOrders as $subOrder) {
                if ($subOrder->items()->count() > 0) {
                    foreach ($subOrder->items as $key => $value) {
                        if ($value['book_type'] == 'hardcopy') {
                            return '1';
                        }
                    }
                }
            }
        } else {
            if ($this->items()->count() > 0) {
                foreach ($this->items as $key => $value) {
                    if ($value['book_type'] == 'hardcopy') {
                        return '1';
                    }
                }
            }
        }
        return $data;
    }

    public function books()
    {
        $list = [];
        if ($this->items()->count() > 0) {
            foreach ($this->items as $key => $value) {
                if ($value->book != '') {
                    $list[] = $value->book;
                }
            }
        }
        return $list;
    }
    public function getDate($lang)
    {
        $date = date('l d F Y',strtotime($this['updated_at']));
        $time = date('H:i',strtotime($this['updated_at']));
        if ($lang == 'ar') {
            $date = DayMonthOnly($this['updated_at']);
            $time = getTime($this['updated_at']);
        }
        return [
            'date' => $date,
            'time' => $time
        ];
    }
    public function apiData($lang,$currency = null)
    {
        if ($this->main_order_id == '0') {
            $orderItems = [];
            $itemsCount = 0;
            $subOrders = [];
            $total = 0;
            if ($this->subOrders()->count() > 0) {
                foreach ($this->subOrders as $subOrder) {
                    if ($subOrder->items()->count() == 0) {
                        $subOrder->delete();
                    } else {
                        $subOrders[] = $subOrder->apiData($lang);
                        foreach ($subOrder->items as $key => $value) {
                            if ($value->book != '') {
                                $itemsCount += $value->quantity;
                                $orderItems[] = $value->apiData($lang,$currency);
                                $total += $value->total;
                            } else {
                                $value->delete();
                            }
                            
                        }
                    }
                }
            }
            if ($currency == '') {
                $totals = [
                    'total' => $total,
                    'netTotal' => $total - $this->discount(),
                    'discount' => $this->discount()
                ];
            } else {
                $curruncy = Currencies::find($currency);
                if ($curruncy != '') {
                    $totals = [
                        'total' => round($total/$curruncy->transfer_rate),
                        'netTotal' => round(($total - $this->discount())/$curruncy->transfer_rate),
                        'discount' => round($this->discount()/$curruncy->transfer_rate)
                    ];
                } else {
                    $totals = [
                        'total' => $total,
                        'netTotal' => $total - $this->discount(),
                        'discount' => $this->discount()
                    ];
                }
            }

            $data = [
                'id' => $this->id,
                'date' => $this->getDate($lang)['date'],
                'time' => $this->getDate($lang)['time'],
                'total' => $totals['total'],
                'discount' => $totals['discount'],
                'netTotal' => $totals['netTotal'],
                'publisher' => $this->publisher != '' ? $this->publisher->apiData($lang) : ['id'=>''],
                'address' => $this->address != '' ? $this->address->apiData($lang) : ['id'=>''],
                'shippingMethod' => $this->shipping_method,
                'paymentMethod' => 'stripe',
                'itemsCount' => $itemsCount,
                'items' => $orderItems,
                'subOrders' => $subOrders,
                'coupon_code' => $this->coupun_code,
                'hasHardCopy' => $this->hasHardCopy()

            ];
        } else {
            $orderItems = [];
            $itemsCount = 0;
            $total = 0;
            foreach ($this->items as $key => $value) {
                $itemsCount += $value->quantity;
                $orderItems[] = $value->apiData($lang,$currency);
                $total += $value->total;
            }
            if ($currency == '') {
                $totals = [
                    'total' => $total,
                    'netTotal' => $total - $this->discount(),
                    'discount' => $this->discount()
                ];
            } else {
                $curruncy = Currencies::find($currency);
                if ($curruncy != '') {
                    $totals = [
                        'total' => round($total/$curruncy->transfer_rate),
                        'netTotal' => round(($total - $this->discount())/$curruncy->transfer_rate),
                        'discount' => round($this->discount()/$curruncy->transfer_rate)
                    ];
                } else {
                    $totals = [
                        'total' => $total,
                        'netTotal' => $total - $this->discount(),
                        'discount' => $this->discount()
                    ];
                }
            }
            $data = [
                'id' => $this->id,
                'date' => $this->getDate($lang)['date'],
                'time' => $this->getDate($lang)['time'],
                'total' => $totals['total'],
                'discount' => $totals['discount'],
                'netTotal' => $totals['netTotal'],
                'publisher' => $this->publisher != '' ? $this->publisher->apiData($lang) : ['id'=>''],
                'address' => $this->address = '' ? $this->address->apiData($lang) : ['id'=>''],
                'shippingMethod' => $this->shipping_method,
                'paymentMethod' => 'stripe',
                'itemsCount' => $this->items()->count(),
                'items' => $orderItems,
                'hasHardCopy' => $this->hasHardCopy()
            ];
        }
        return $data;
    }
    public function itemsCalculator()
    {
        $weight = 0;
        $count = 0;

        foreach ($this->items as $key => $value) {
            if ($value->book != '') {
                $weight += $value['unit_weight'] * $value['quantity'];
                $count += $value['quantity'];
            }
        }

        return [
            'weight' => $weight,
            'count' => $count
        ];
    }
}
