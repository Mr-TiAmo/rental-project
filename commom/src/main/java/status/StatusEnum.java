package status;

/**
 * @Company AAA软件教育
 * @Author Seven Lee
 * @Date Create in 2019/10/18 15:58
 * @Description
 **/
public enum StatusEnum {

    SUCCESS("1", "操作成功"),
    FAILED("2", "操作失败"),
    EXIST("3", "存在"),
    NOT_EXIST("4", "不存在"),
    DICTIONARY_NORMAL("5", "字典正常"),
    DICTIONARY_DELETE("6", "字典被删除"),
    UPDATE_OPTION("7", "修改操作"),
    DELETE_OPTION("8", "删除操作"),
    INSERT_OPTION("9", "新增操作");

    StatusEnum(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    private String code;
    private String msg;

    public String getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

    public String getMsg(String code) {
        for (StatusEnum statusEnum : StatusEnum.values()) {
            if(statusEnum.getCode().equals(code)) {
                return statusEnum.getMsg();
            }
        }
        return null;
    }

}
