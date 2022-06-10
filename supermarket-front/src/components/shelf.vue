<template>
  <div class="gray-box">
    <div class="title">
      <h2 v-if="isSec===false">{{title}}</h2>
      <div>
        <slot name="right"></slot>
      </div>
      <div v-if="isSec===true" class="seckill-head">
        <div class="seckill-icon">
          <img src="static/clock.png">
        </div>
        <div class="seckill-text">
          <span class="seckill-title">限时秒杀</span>
          <span class="seckill-remarks">总有你想不到的低价</span>
        </div>
        <div class="count-down">
          <span class="count-down-text">当前场次</span>
          <span class="count-down-num count-down-hour">{{ formatTime(hh) }}</span>
          <span class="count-down-point">:</span>
          <span class="count-down-num count-down-minute">{{ formatTime(mm) }}</span>
          <span class="count-down-point">:</span>
          <span class="count-down-num count-down-seconds">{{ formatTime(ss) }}</span>
          <span class="count-down-text">后结束抢购</span>
        </div>
      </div>
    </div>

    <!--内容-->
    <div>
      <slot name="content"></slot>
    </div>
  </div>
</template>
<script>
  export default {
    props: [
      'title', 'isSec'
    ],
    data () {
      return {
        hh: 3,
        mm: 23,
        ss: 32
      }
    },
    methods: {
      formatTime (xx) {
        return xx < 10 ? '0' + xx : xx
      },
      decreaseTime () {
        this.ss--
        if (this.ss === -1) {
          this.ss = 59
          this.mm--
          if (this.mm === -1) {
            this.mm = 59
            this.hh--
          }
        }
      }
    }
  }
</script>
<style lang="scss" rel="stylesheet/scss" scoped>
.seckill {
  width: 100%;
  height: 330px;
  margin: 15px auto;
  background-color: #fff;
}
.seckill-head {
  width: 100%;
  height: 50px;
  background-color: #e01222;
}
.seckill-icon {
  width: 68px;
  height: 100%;
  float: left;
}
.seckill-icon img {
  width: 35px;
  height: 35px;
  margin-top: 6px;
  margin-left: 15px;
  animation-name: shake-clock;
  animation-duration: 0.3s;
  animation-iteration-count: infinite; /*设置无线循环*/
}
/*定义闹钟震动动画关键帧*/
@keyframes shake-clock {
  0% {
    transform: rotate(-8deg);
  }
  50% {
    transform: rotate(8deg);
  }
  100% {
    transform: rotate(-8deg);
  }
}
.seckill-text {
  width: 300px;
  height: 100%;
  float: left;
}
.seckill-text .seckill-title {
  font-size: 22px;
  line-height: 50px;
  color: #fff;
}
.seckill-text .seckill-remarks {
  margin-left: 5px;
  font-size: 10px;
  color: #fff;
}
/*倒计时*/
.count-down {
  height: 100%;
  margin-right: 30px;
  line-height: 50px;
  float: right;
}
.count-down-text {
  color: #fff;
}
.count-down-num {
  padding: 3px;
  border-radius: 5px;
  background-color: #440106;
  font-size: 26px;
  font-weight: bold;
  color: #f90013;
}
.count-down-point {
  font-size: 26px;
  font-weight: bold;
  color: #440106;
}

.seckill-content {
  width: 100%;
  height: 280px;
}
.seckill-item {
  width: 183px;
  height: 250px;
  margin-top: 15px;
  margin-left: 15px;
  box-shadow: 0px 0px 8px #ccc;
  cursor: pointer;
  float: left;
}
.seckill-item-img {
  width: 160px;
  height: 160px;
  margin: 0px auto;
  overflow: hidden;
  border-bottom: 1px solid #ccc;
  background-color: #fff;
}
.seckill-item-img img {
  width: 130px;
  height: 130px;
  margin-left: 15px;
  margin-top: 15px;
  transition: margin-top 0.3s;
}
.seckill-item-img:hover img {
  margin-top: 6px;
  transition: margin-top 0.3s;
}
.seckill-item-info {
  padding: 5px;
  padding-left: 15px;
  padding-right: 15px;
  font-size: 12px;
  color: #009688;
}
.seckill-item-info i:first-child {
  font-size: 14px;
}
.seckill-price {
  margin-right: 5px;
  font-size: 25px;
  font-weight: bold;
}


  .gray-box {
    position: relative;
    margin-bottom: 30px;
    overflow: hidden;
    background: #fff;
    border-radius: 8px;
    border: 1px solid #dcdcdc;
    border-color: rgba(0, 0, 0, .14);
    box-shadow: 0 3px 8px -6px rgba(0, 0, 0, .1);
    .title {
      padding-left: 30px;
      position: relative;
      z-index: 10;
      height: 60px;
      padding: 0 10px 0 24px;
      border-bottom: 1px solid #d4d4d4;
      border-radius: 8px 8px 0 0;
      box-shadow: rgba(0, 0, 0, .06) 0 1px 7px;
      background: #f3f3f3;
      background: -webkit-linear-gradient(#fbfbfb, #ececec);
      background: linear-gradient(#fbfbfb, #ececec);
      line-height: 60px;
      font-size: 18px;
      color: #595959;
      display: flex;
      justify-content: space-between;
      align-items: center;
      h2 {
        font-size: 18px;
        font-weight: 400;
        color: #3a3939;
        display: inline-block;
      }
    }
  }
</style>
