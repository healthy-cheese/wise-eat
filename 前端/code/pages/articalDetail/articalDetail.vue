<template>
	<view class="">
		<view class="bg-white padding-sm">
			<view class="margin-bottom-lg">
				<view class="text-black text-bold text-xl margin-tb-sm">
					<text>饮食的艺术 ｜ 颠覆你的想象</text>
				</view>
				<view class="flex align-center">
					<view class="">
						东北师大出版社
					</view>
					<view class="margin-left-lg">
						2020.8.30
					</view>
				</view>
			</view>
			<view class="text-black ">
				【环球时报-环球网报道 记者 倪浩】商务部新闻发言人高峰24日表示，北京市商务局已经收到北京字节跳动公司提交的技术出口许可申请。
				在24日下午举行的新闻发布会上，有媒体据字节跳动公司发表声明称，根据《中华人民共和国技术进出口管理条例》和《中国禁止出口限制出口技术目录》规定，已经向北京市商务局提交了许可申请，正在等待北京市商务局的受理决定。请问商务部能否证实？申请能否被批准？
				对此高峰回应说，据了解，北京市商务局已经收到北京字节跳动公司提交的技术出口许可申请，后续将按照相关规定和程序，依法依规处理。
			</view>
			<view class="flex justify-end margin-sm">
				<view class="">
					<text class="cuIcon-share lg">分享</text>
				</view>
				<view class="margin-left-lg">
					<text class="cuIcon-favor lg" @click="onCollectionTap">收藏</text>
				</view>
				<view class="margin-left-lg">
					<text class="cuIcon-appreciate lg">点赞</text>
				</view>
			</view>
		</view>
		<view class="text-blue text-center margin-sm">
			写评论
		</view>
	</view>
	
</template>

<script>
	export default {
		data() {
			collection:0;
		},
		onLoad() {
			
		},
		methods: {
			// 收藏
			// onCollectionTap(e){
			// 	console.log("onCollectionTap");
			// 	var collection=this.$data.collection;
			// 	collection=!collection;
			// 	this.$forceUpdate();
			// 	uni.showToast({
			// 	    title: '收藏成功',
			// 	    duration: 2000
			// 	});
			// }
		}
	}
</script>

<style>
</style>
