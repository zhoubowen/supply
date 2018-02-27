package com.supply.util;


import java.io.Serializable;

/**
 * 分页对象
 * Created by bowen on 2018-02-27 02:20
 */
public class PageUtil implements Serializable {

	private Integer page = 1; // 当前页
	private Integer size = 10; // 页面大小
	private Integer recordCount;// 总记录数
	private Integer pageCount;// 总页数

	/**
	 * 
	 */
	public PageUtil() {
		super();
	}

	/**
	 * @param page
	 *            当前页
	 * @param size
	 *            页面大小
	 */
	public PageUtil(Integer page, Integer size) {
		super();
		this.page = page;
		this.size = size;
	}

	/**
	 * @return 当前页
	 */
	public Integer getPage() {
		return page;
	}

	/**
	 * @param 当前页
	 *            the page to set
	 */
	public void setPage(Integer page) {
		this.page = page;
	}

	/**
	 * @return 每页记录数
	 */
	public Integer getSize() {
		return size;
	}

	/**
	 * @param 每页记录数
	 *            the size to set
	 */
	public void setSize(Integer size) {
		this.size = size;
	}

	/**
	 * @return 总记录数
	 */
	public Integer getRecordCount() {
		return recordCount;
	}

	/**
	 * @param recordCount
	 *            the recordCount to set
	 */
	public void setRecordCount(Integer recordCount) {
		this.recordCount = recordCount;
		getPageCount();
	}

	/**
	 * 总页数
	 */
	public Integer getPageCount() {
		this.pageCount = ((getRecordCount() == null ? 0 : getRecordCount()) + this.getSize() - 1)
				/ this.getSize();
		return this.pageCount;
	}
}
