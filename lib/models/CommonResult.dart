import 'dart:convert';

class CommonResult {
  dynamic ack;
  dynamic code;
  dynamic message;

  CommonResult({this.ack, this.code, this.message});

  Map<String, dynamic> toMap() {
    return {"ack": ack, "code": code, "message": message};
  }

  factory CommonResult.fromMap(Map<String, dynamic> map) {
    return CommonResult(
        ack: map['ack'] as dynamic,
        code: map['code'] as dynamic,
        message: map['message'] as dynamic);
  }

  String toJson() => json.encode(toMap());

  factory CommonResult.fromJson(String name) =>
      CommonResult.fromMap(json.decode(name));
}
