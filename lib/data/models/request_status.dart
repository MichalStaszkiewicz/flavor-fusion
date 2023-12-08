class RequestStatus<T> {
  RequestStatus({required this.completed, required this.type});
  bool completed;
  T type;
}
