package cn.exrick.pojo.front;

import java.io.Serializable;
import java.util.Date;

public class Coupon implements Serializable {

    private long couponId;
    private int criterion;
    private int bonus;
    private String name;
    private Date fromTime;
    private Date toTime;
    private int num;

    @Override
    public String toString() {
        return "Coupon{" +
                "couponId=" + couponId +
                ", criterion=" + criterion +
                ", bonus=" + bonus +
                ", name=" + name +
                ", fromTime=" + fromTime +
                ", toTime=" + toTime +
                '}';
    }

    public long getCouponId() {
        return couponId;
    }

    public void setCouponId(long couponId) {
        this.couponId = couponId;
    }

    public int getCriterion() {
        return criterion;
    }

    public void setCriterion(int criterion) {
        this.criterion = criterion;
    }

    public int getBonus() {
        return bonus;
    }

    public void setBonus(int bonus) {
        this.bonus = bonus;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getFromTime() {
        return fromTime;
    }

    public void setFromTime(Date fromTime) {
        this.fromTime = fromTime;
    }

    public Date getToTime() {
        return toTime;
    }

    public void setToTime(Date toTime) {
        this.toTime = toTime;
    }
}
