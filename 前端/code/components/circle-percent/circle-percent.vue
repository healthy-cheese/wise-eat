<template>
	<view class="box">
		<view class="boxContent">
            <view class="boxContent2">
				<view class="before" :style="{top: (100-percent)+'%'}"></view>
				<view class="jd" :style="{background: bg}"></view>
				<view class="after" :style="{top: (100-percent)+'%'}"></view>
			</view>
			<view class="percent">{{percent}}%</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: "circle-percent",
		props: {
		  titleOne:{
		    type:String,
			default: '发卡'
		  },
          titleTwo:{
            type:String,
            default: '21'
          },
          bg: {
            type:String,
            default: 'red'
		  },
          percent: {
            type:String,
            default: "0"
          }
		},
		computed: {
		},
		data() {
		    return {

		    }
		},
		methods: {
		}
	}
</script>

<style lang="scss">
.box{
		box-sizing: border-box;
		// width: 33%;
		text-align:center;
		margin: 20upx 0;
		.boxContent{
			position: relative;
			width: 300upx;
			height: 300upx;
			border-radius: 50%;
			margin: 0 auto;
			border: 4upx solid #d9d9d9;
			overflow: hidden;
			.boxContent2{
				width: 100%;
				height: 100%;
				border-radius: 50%;
				border: 4upx solid #fff;
				box-sizing: border-box;
				overflow: hidden;
				.before,
				.after{
					content: "";
					position: absolute;
					width: 200%;
					height: 200%;
					top: 0;
					left: 50%;
					background-color: rgba(255, 255, 255, .4);
					border-radius: 45%;
					transform: translate(-50%, -100%) rotate(0);
					animation: rotate 6s linear infinite;
					z-index: 10;
				}

				.after {
					border-radius: 44%;
					background-color: rgba(255, 255, 255, .9);
					transform: translate(-50%, -100%) rotate(0);
					animation: rotate 10s linear -5s infinite;
					z-index: 20;
				}

				@keyframes rotate {
					50% {
						transform: translate(-50%, -103%) rotate(180deg);
					} 100% {
						  transform: translate(-50%, -100%) rotate(360deg);
					  }
				}

				.jd{
					width: 100%;
					height: 100%;
					bottom:0;
				}
			}

			.percent{
				font-size: 46upx;
				font-weight: bold;
				position: absolute;
				top: 120upx;
				width: 100%;
				text-align: center;
				z-index: 90;
			}
		}
		.atitle{
			margin-top: 0upx;
			font-size: 20upx;
			color: $uni-text-color-grey;
			font-size: $uni-font-size-base;
		}
	}
</style>
