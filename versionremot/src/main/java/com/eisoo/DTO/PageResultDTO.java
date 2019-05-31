package com.eisoo.DTO;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class PageResultDTO<T> extends ResultDTO<T> {

    /**
     * 总记录数
     */
    protected Integer totalSize = 0;

    /**
     * 总页数
     */
    protected Integer totalPage = 0;

    /**
     * 当前页数
     */
    protected Integer pageNo = 1;

    /**
     * 列表
     */
    protected List<T> dataList = new ArrayList();

    public PageResultDTO() {
    }

    public PageResultDTO(List<T> data, Integer totalSize, Integer pageSize) {
        this.code = SUCCESS_CODE;
        this.totalPage = (totalSize % pageSize == 0) ? totalSize / pageSize : totalSize / pageSize + 1;
        this.dataList = data;
        this.totalSize = totalSize;
    }

    public PageResultDTO(List<T> data, Integer totalSize, Integer pageSize, int pageNo) {
        this(data, totalSize, pageSize);
        this.pageNo = pageNo;
    }

    public PageResultDTO(String code, String msg, List<T> data) {
        super(code, msg);
        this.dataList = data;
    }
}