<template>
  <div>
    <y-shelf title="我的优惠">
      <div slot="content">
        <!--标题-->
        <div class="topTab">
          <span class="t_type">类别</span> <span class="t_criterion">满额</span> <span class="t_bonus">减额</span>
          <span class="t_dateFrom">生效时间</span> <span class="t_dateTo">过期时间</span> <span class="t_dateTo">数量</span>
        </div>
        <br>
        <div v-if="couponList.length">
          <div class="coupon-item" v-for="(item,i) in couponList" :key="i">
            <img class="c_img" :src="item.url" style="width: 90px;height: 90px;margin-left: 25px;margin-top: 10px"></img>
            <div class="c_type">{{item.name}}</div>
            <div class="c_criterion">{{item.criterion}}</div>
            <div class="c_bonus">{{item.bonus}}</div>
            <div class="c_dateFrom">{{item.fromTime}}</div>
            <div class="c_dateTo">{{item.toTime}}</div>
            <div class="c_num" style="margin-left: -20px">{{item.num}}</div>
          </div>
        </div>
        <div v-else>
          <div style="padding: 100px 0;text-align: center">
            <img src="/static/images/no-search.png">
            <br>
            <span class="no-discount">您目前还没有优惠券</span>
          </div>
        </div>

      </div>
    </y-shelf>
  </div>
</template>
<script>
  import YShelf from '/components/shelf'
  import {getCouponList} from '../../../api/goods'
  import {getStore} from '../../../utils/storage'
  // import http from '../../../api/public'

  export default {
    data () {
      return {
        couponList: [],
        userId: ''
      }
    },
    methods: {
      formatTime (d) {
        let date = new Date(d)
        let year = date.getFullYear()
        let month = date.getMonth() + 1
        let day = date.getDate()
        month = month < 10 ? '0' + month : month
        day = day < 10 ? '0' + day : day
        return year + '-' + month + '-' + day
      },
      _couponList () {
        getCouponList({userId: Number(this.userId)}).then(res => {
          let data = res.result
          if (data.length) {
            res.result.forEach(item => {
              item.fromTime = this.formatTime(item.fromTime)
              item.toTime = this.formatTime(item.toTime)
            })
            this.couponList = res.result
            // this.addressId = res.result[0].addressId || '1'
          } else {
            this.couponList = []
          }
        })
      }
    },

    created () {
      this.userId = getStore('userId')
      this._couponList()
    },

    components: {
      YShelf
    }
  }
</script>
<style lang="scss" scoped>
  .no-discount {
       line-height: 2em;
       font-size: 22px;
       color: #999;
  }

  .topTab span {
    width: 137px;
    float: left;
    text-align: center;
    color: #838383;
  }

  .topTab {
    float: left;
    text-align: left;
    margin-top: 20px;
    height: 15px;

    .t_type {
      margin-left: 145px;
      text-align: left;
      width: 100px;
    }
    .t_criterion {
      width: 200px;
    }
    .t_bonus {
      width: 190px;
    }
    .t_dateFrom {
      width: 230px;
    }
    .t_dateTo {
      margin-left: 10px;
      //width: 230px;
    }

    .default {
      width: 80px;
      > a {
        text-align: center;
        /*display: none;*/
      }
    }
    &:hover {
      .default > a {
        display: block;
      }
    }

  }

  .coupon-item {
    height: 100px;
    margin-top: 10px;

    float: left;
    display: flex;

    text-align: left;
    align-items: center;

    .c_type {
      margin-left: 25px;
      text-align: left;
      width: 190px;
    }
    .c_criterion {
      width: 210px;
    }
    .c_bonus {
      width: 190px;
    }
    .c_dateFrom {
      width: 190px;
    }
    .c_dateTo {
      //margin-left: 20px;
      width: 200px;
    }
    .c_num {
      width: 150px;
    }
    .default {
        width: 80px;
        > a {
          text-align: center;
          /*display: none;*/
        }
    }

    &:hover {
      .default > a {
        display: block;
      }
    }
  }

</style>
