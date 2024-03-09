package com.entity.vo;

import com.entity.LajixinxiEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 垃圾信息
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("lajixinxi")
public class LajixinxiVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 垃圾名称
     */

    @TableField(value = "lajixinxi_name")
    private String lajixinxiName;


    /**
     * 垃圾类型
     */

    @TableField(value = "lajixinxi_types")
    private Integer lajixinxiTypes;


    /**
     * 垃圾图片
     */

    @TableField(value = "lajixinxi_photo")
    private String lajixinxiPhoto;


    /**
     * 浏览次数
     */

    @TableField(value = "lajixinxi_click_number")
    private Integer lajixinxiClickNumber;


    /**
     * 垃圾详情
     */

    @TableField(value = "lajixinxi_content")
    private String lajixinxiContent;


    /**
     * 创建时间 show1 show2 photoShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：垃圾名称
	 */
    public String getLajixinxiName() {
        return lajixinxiName;
    }


    /**
	 * 获取：垃圾名称
	 */

    public void setLajixinxiName(String lajixinxiName) {
        this.lajixinxiName = lajixinxiName;
    }
    /**
	 * 设置：垃圾类型
	 */
    public Integer getLajixinxiTypes() {
        return lajixinxiTypes;
    }


    /**
	 * 获取：垃圾类型
	 */

    public void setLajixinxiTypes(Integer lajixinxiTypes) {
        this.lajixinxiTypes = lajixinxiTypes;
    }
    /**
	 * 设置：垃圾图片
	 */
    public String getLajixinxiPhoto() {
        return lajixinxiPhoto;
    }


    /**
	 * 获取：垃圾图片
	 */

    public void setLajixinxiPhoto(String lajixinxiPhoto) {
        this.lajixinxiPhoto = lajixinxiPhoto;
    }
    /**
	 * 设置：浏览次数
	 */
    public Integer getLajixinxiClickNumber() {
        return lajixinxiClickNumber;
    }


    /**
	 * 获取：浏览次数
	 */

    public void setLajixinxiClickNumber(Integer lajixinxiClickNumber) {
        this.lajixinxiClickNumber = lajixinxiClickNumber;
    }
    /**
	 * 设置：垃圾详情
	 */
    public String getLajixinxiContent() {
        return lajixinxiContent;
    }


    /**
	 * 获取：垃圾详情
	 */

    public void setLajixinxiContent(String lajixinxiContent) {
        this.lajixinxiContent = lajixinxiContent;
    }
    /**
	 * 设置：创建时间 show1 show2 photoShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间 show1 show2 photoShow
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
