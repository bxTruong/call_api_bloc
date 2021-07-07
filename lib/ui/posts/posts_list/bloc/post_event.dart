// Mỗi khi muốn thực hiện một hành động với post phải đưa vào một sự kiện để view lắng nghe, vd thêm sửa xóa
abstract class PostEvent {}

class GetPostsListEvent extends PostEvent {}
//
