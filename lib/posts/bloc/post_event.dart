import 'package:equatable/equatable.dart';

// Mỗi khi muốn thực hiện một hành động với post phải đưa vào một sự kiện để view lắng nghe
abstract class PostEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetPostsList extends PostEvent {}
