package com.eisoo.common.core.exception;


/**
 * 业务公用的Exception.
 *
 * 继承自RuntimeException, 从由Spring管理事务的函数中抛出时会触发事务回滚.
 *
 */
public class BusinessException extends RuntimeException {

    private static final long serialVersionUID = 3583566093089790852L;

    public BusinessException() {
        super();
    }

    public BusinessException(String msg) {
        super(msg);
    }
}
