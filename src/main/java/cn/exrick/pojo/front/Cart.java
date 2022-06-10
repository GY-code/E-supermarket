package cn.exrick.pojo.front;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author Exrickx
 */
public class Cart implements Serializable {

    private long cartId;

    private long productId;

    private int checked;

    private int productNum;

    private String productName;

    private String productImg;

    private Date joinTime;

    private int limitNum;

    private BigDecimal salePrice;

    public int getLimitNum() {
        return limitNum;
    }

    public void setLimitNum(int limitNum) {
        this.limitNum = limitNum;
    }

    public BigDecimal getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(BigDecimal salePrice) {
        this.salePrice = salePrice;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cartId=" + cartId +
                ", productId=" + productId +
                ", checked=" + checked +
                ", productNum=" + productNum +
                ", productName='" + productName + '\'' +
                ", productImg='" + productImg + '\'' +
                ", joinTime=" + joinTime +
                ", limitNum=" + limitNum +
                ", salePrice=" + salePrice +
                '}';
    }

    public Long getCartId() {
        return cartId;
    }

    public void setCartId(Long cartId) {
        this.cartId = cartId;
    }

    public int getChecked() {
        return checked;
    }

    public void setChecked(int checked) {
        this.checked = checked;
    }

    public Date getJoinTime() {
        return joinTime;
    }

    public void setJoinTime(Date joinTime) {
        this.joinTime = joinTime;
    }

    public void setCartId(long cartId) {
        this.cartId = cartId;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public int getProductNum() {
        return productNum;
    }

    public void setProductNum(int productNum) {
        this.productNum = productNum;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImg() {
        return productImg;
    }

    public void setProductImg(String productImg) {
        this.productImg = productImg;
    }
}
