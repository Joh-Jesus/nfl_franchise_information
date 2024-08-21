abstract interface class FromJson<T> {
  T format(Map<String, dynamic> json);
}
