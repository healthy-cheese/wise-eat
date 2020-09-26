<!-- 智食圈tab页 -->
<template>
	<view>
		<view class="fixed">
			<cu-custom :isBack="true" bgColor="bg-shadeTop text-white">
				<block slot="backText">返回</block>
				<block slot="content">智食圈</block>
			</cu-custom>
		</view>
		<view class="">
			<view class="content">
				<view class="nuter">
					<view :class="target==0?'active':''" @click="setIndex" data-index="0">
						关注
					</view>
					<view :class="target==1?'active':''" @click="setIndex" data-index="1">
						推荐
					</view>
				</view>
				<swiper :duration="500" :current="thisindex" :data-index='thisindex' @change="toggle" circular>
					<swiper-item>
						<!-- 按顺序对应第一个的内容 -->
						<waterfallsFlow :list="list" class="margin-top-sm">
						    <template v-slot:default="item">
								<!-- 此处瀑布流内容 -->
								<view class="cnt" @click="toSocialDetail">
									<view class="text text-detail margin-sm">{{item.text}}</view>
									<view class="flex align-center justify-between padding-sm">
										<view class="">
											<image class="sm cu-avatar round" src="../../static/images/test/noodles.png" mode=""></image>
											<text class="text-sm text-gray">我只是一只杰瑞</text>
										</view>
										<view class="">
											<text class="cuIcon-like text-gray text-sm">32</text>
										</view>
									</view>
						        </view>
						    </template>
						</waterfallsFlow>
					</swiper-item>
					<swiper-item>
						<!-- 按顺序对应第二个的内容 -->
						<swiper class="card-swiper" :class="dotStyle?'square-dot':'round-dot'" :indicator-dots="true" :circular="true"
						 :autoplay="true" interval="5000" duration="500" @change="cardSwiper" indicator-color="#8799a3"
						 indicator-active-color="#0081ff">
							<swiper-item v-for="(item,index) in swiperList" :key="index" :class="cardCur==index?'cur':''">
								<view class="swiper-item">
									<image :src="item.url" mode="aspectFill" v-if="item.type=='image'"></image>
									<video :src="item.url" autoplay loop muted :show-play-btn="false" :controls="false" objectFit="cover" v-if="item.type=='video'"></video>
								</view>
							</swiper-item>
						</swiper>
						<!-- 热点文章 -->
						<view class="">
							<view class="bg-white padding-sm solids-bottom" @click="toArticalDetail">
								<view class="text-bold text-lg">
									<text>饮食的艺术 ｜ 颠覆你的想象</text>
								</view>
								<view class="flex">
									<view class="margin-right-sm">
										<image src="../../static/images/tabbar/camara.png" style="width: 100rpx;height: 100rpx;" mode=""></image>
									</view>
									<view class="">
										<text class="text-sm margin-top-sm text-detail">酱料在上桌前淋在饭上。滋滋的响声过后，焦香入味的米粒混着四溢的腊香袭来，这才叫作煲仔，焦香入味的米粒混着四溢的腊香袭来，这才叫作煲仔</text>
									</view>
								</view>
							</view>
						</view>
					</swiper-item>
				</swiper>
			</view>
		</view>
	</view>
</template>

<script>
	import waterfallsFlow from "@/components/maramlee-waterfalls-flow/maramlee-waterfalls-flow.vue";

	export default {
		components: { waterfallsFlow },
		// 只要上面的选项跟下面的swiper-item个数相同，直接加上面的个数，下面的会自动对应显示，很简便，拿来就能用
		data() {
			return {
				// 当前样式
				target: 0,
				// 当前item位置
				thisindex: 0,
				// 瀑布流
				list: [
				          {
				            id: 1,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599475741266&di=e36d6c01c93320e2ba1504d8357248f4&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg",
				            title: "可爱的小猫咪呀",
				            text:
				              "小小的猫咪，甚是呆萌，呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌呆萌",
				          },
				          {
				            id: 2,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599475934834&di=7a37b8d628252c4aced6ed0decba9442&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F43%2F74%2F01300000164151121808741085971.jpg",
				            title: "迪士尼动画",
				            text: "迪士尼动画之……",
				          },
				          {
				            id: 3,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599476083909&di=a5debff35edec5de105bc105d6fdbce3&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F77%2F77%2F01300000336597125202779973172.jpg",
				            title: "火箭",
				            text: "火箭升空瞬间，宏伟壮观啊",
				          },
				          {
				            id: 5,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599476129760&di=7a3db0b14f6a74240bbfa7922ba22f45&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F82%2F55%2F01300000349330124003555691086.jpg",
				            title: "华佗",
				            text: "华佗人物画像 中国画 线条画 毛笔画 彩色画",
				          },
				          {
				            id: 6,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599476215687&di=97c2bbf6f3a1a3e2a6a2dc77dfe4bea7&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F72%2F82%2F19300000009075130804824786610.jpg",
				            title: "恐龙",
				            text: "恐龙来啦",
				          },
				          {
				            id: 7,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599476258176&di=29622b0f0cfd659aecebabaae352d02c&imgtype=0&src=http%3A%2F%2F1882.img.pp.sohu.com.cn%2Fimages%2Fblog%2F2011%2F3%2F25%2F13%2F13%2Fu48513077_12fa4ba953ag213.jpg",
				            title: "手",
				            text: "什么？",
				          },
				          {
				            id: 8,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599476300222&di=49712f992d8f7bbb1a5851eced71cbe2&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F71%2F56%2F16300000988660128426569668958.jpg",
				            title: "百年好合",
				            text: "百年好合 结婚 庚帖 二次元",
				          },
				          {
				            id: 9,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599476416001&di=ea1a1f8f9b1274d39c05af3e48041e6a&imgtype=0&src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_bt%2F0%2F12420002963%2F641",
				            title: "5G",
				            text: "5G 来啦",
				          },
				          {
				            id: 10,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599476497015&di=2dfa9a6ec465d7330bc0b4433d63cd9e&imgtype=0&src=http%3A%2F%2Fimgo.zjjjtg.com%2Fimg2020%2F9%2F4%2F10%2F2020090410315179234.jpg",
				            title: "LEVEL 2",
				            text: "LEVEL 2",
				          },
				          {
				            id: 12,
				            image_url:
				              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1599476567983&di=040976a1cd1a6e5510a237c57bdcff06&imgtype=0&src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_bt%2F0%2F12421051168%2F641",
				            title: "王者荣耀",
				            text: "王者荣耀 龙 快来打龙 请求集合",
				          },
				        ],
				// 轮播图
				cardCur: 0,
				swiperList: [{
					id: 0,
					type: 'image',
					url: 'https://ossweb-img.qq.com/images/lol/web201310/skin/big84000.jpg'
				}, {
					id: 1,
					type: 'image',
					url: 'https://ossweb-img.qq.com/images/lol/web201310/skin/big37006.jpg',
				}, {
					id: 2,
					type: 'image',
					url: 'https://ossweb-img.qq.com/images/lol/web201310/skin/big39000.jpg'
				}, {
					id: 3,
					type: 'image',
					url: 'https://ossweb-img.qq.com/images/lol/web201310/skin/big10001.jpg'
				}, {
					id: 4,
					type: 'image',
					url: 'https://ossweb-img.qq.com/images/lol/web201310/skin/big25011.jpg'
				}, {
					id: 5,
					type: 'image',
					url: 'https://ossweb-img.qq.com/images/lol/web201310/skin/big21016.jpg'
				}, {
					id: 6,
					type: 'image',
					url: 'https://ossweb-img.qq.com/images/lol/web201310/skin/big99008.jpg'
				}],
				dotStyle: false,
				towerStart: 0,
				direction: ''
			}
		},
		onLoad() {
			this.TowerSwiper('swiperList');
			// 初始化towerSwiper 传已有的数组名即可
		},
		methods: {
			// tab切换
			// 切换触发的事件
			toggle(e) {
				let index = e.detail.current
				this.target = index
			},
			// 点击nav控制下面的展示
			setIndex(e) {
				let index = e.currentTarget.dataset.index
				this.thisindex = index
			},
			//轮播图
			DotStyle(e) {
				this.dotStyle = e.detail.value
			},
			// cardSwiper
			cardSwiper(e) {
				this.cardCur = e.detail.current
			},
			// towerSwiper
			// 初始化towerSwiper
			TowerSwiper(name) {
				let list = this[name];
				for (let i = 0; i < list.length; i++) {
					list[i].zIndex = parseInt(list.length / 2) + 1 - Math.abs(i - parseInt(list.length / 2))
					list[i].mLeft = i - parseInt(list.length / 2)
				}
				this.swiperList = list
			},
			
			// towerSwiper触摸开始
			TowerStart(e) {
				this.towerStart = e.touches[0].pageX
			},
			
			// towerSwiper计算方向
			TowerMove(e) {
				this.direction = e.touches[0].pageX - this.towerStart > 0 ? 'right' : 'left'
			},
			
			// towerSwiper计算滚动
			TowerEnd(e) {
				let direction = this.direction;
				let list = this.swiperList;
				if (direction == 'right') {
					let mLeft = list[0].mLeft;
					let zIndex = list[0].zIndex;
					for (let i = 1; i < this.swiperList.length; i++) {
						this.swiperList[i - 1].mLeft = this.swiperList[i].mLeft
						this.swiperList[i - 1].zIndex = this.swiperList[i].zIndex
					}
					this.swiperList[list.length - 1].mLeft = mLeft;
					this.swiperList[list.length - 1].zIndex = zIndex;
				} else {
					let mLeft = list[list.length - 1].mLeft;
					let zIndex = list[list.length - 1].zIndex;
					for (let i = this.swiperList.length - 1; i > 0; i--) {
						this.swiperList[i].mLeft = this.swiperList[i - 1].mLeft
						this.swiperList[i].zIndex = this.swiperList[i - 1].zIndex
					}
					this.swiperList[0].mLeft = mLeft;
					this.swiperList[0].zIndex = zIndex;
				}
				this.direction = ""
				this.swiperList = this.swiperList
			},
			
			// 文章详情页跳转
			toArticalDetail(e){
				this.$router.push({path: '../articalDetail/articalDetail'});
			},
			
			// 动态详情页跳转
			toSocialDetail(e){
				this.$router.push({path: '../socialDetail/socialDetail'});
			}
		}
	}
</script>

<style>
	/* 切换tab */
	.nuter {
		width: 100%;
		height: 80rpx;
		line-height: 80rpx;
		display: flex;
		justify-content: space-around;
		font-size: 35rpx;
	}

	.nuter view {
		flex: 1;
		font-size: 30rpx;
		text-align: center;
		transition: all 0.5s ease .1s;
		background-color: #fff;
	}

	.active {
		box-sizing: border-box;
		color: #f77900;
		border-bottom: 10rpx solid #f0ad4e;
		background-color: #f3ffff;
		border-radius: 10rpx;
		box-shadow: 3px 3px 5px #888888;
	}

	swiper-item {
		width: 100%;
		/* overflow: hidden; */
		/* text-align: center; */
		/* line-height: 300rpx; */
		/* background-color: red; */
	}

	.swiper-item {
		overflow-y: scroll;
		width: 99.5%;
		height: 99%;
		/* background-color: white; */
		/* height: 99%; */
		box-sizing: border-box;
		padding: 1rpx;
	}
	
	uni-swiper{
		/* 触底更新 */
		height: 2000px;
	}
	
	/* 轮播图 */
	.tower-swiper .tower-item {
		transform: scale(calc(0.5 + var(--index) / 10));
		margin-left: calc(var(--left) * 100upx - 150upx);
		z-index: var(--index);
	}
	
	/* 推荐文章	 */
	.text-detail{
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;// 限制快级元素的文本行数
		overflow: hidden;
		text-overflow:ellipsis;
		-o-text-overflow:ellipsis;
	}
</style>
