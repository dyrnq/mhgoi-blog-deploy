--
-- PostgreSQL database dump
--
-- Dumped from database version 11.10 (Debian 11.10-1.pgdg90+1)
-- Dumped by pg_dump version 11.10 (Debian 11.10-1.pgdg90+1)
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
--
-- Name: on_update_current_timestamp_tb_user(); Type: FUNCTION; Schema: public; Owner: postgres
--
CREATE FUNCTION public.on_update_current_timestamp_tb_user() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   NEW.birthday = now();
   RETURN NEW;
END;
$$;
ALTER FUNCTION public.on_update_current_timestamp_tb_user() OWNER TO postgres;
SET default_tablespace = '';
SET default_with_oids = false;
--
-- Name: tb_api; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_api (
    id character varying(50) NOT NULL,
    api_name character varying(20),
    api_url character varying(45),
    api_method character varying(20),
    module_name character varying(50),
    open bigint DEFAULT '0'::bigint,
    api_sort bigint,
    description character varying(45)
);
ALTER TABLE public.tb_api OWNER TO postgres;
--
-- Name: TABLE tb_api; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_api IS '接口表';
--
-- Name: COLUMN tb_api.api_name; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_api.api_name IS 'API名称';
--
-- Name: COLUMN tb_api.api_url; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_api.api_url IS 'API请求地址';
--
-- Name: COLUMN tb_api.api_method; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_api.api_method IS 'API请求方式：GET、POST、PUT、DELETE';
--
-- Name: COLUMN tb_api.module_name; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_api.module_name IS '模块名称';
--
-- Name: COLUMN tb_api.open; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_api.open IS '是否开放';
--
-- Name: COLUMN tb_api.api_sort; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_api.api_sort IS '排序';
--
-- Name: COLUMN tb_api.description; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_api.description IS '描述';
--
-- Name: tb_article; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_article (
    id character varying(50) NOT NULL,
    author_id character varying(50),
    title character varying(50),
    slug character varying(200),
    category_id character varying(50),
    summary text,
    content_markdown text,
    views_count bigint DEFAULT '0'::bigint,
    comments_count bigint DEFAULT '0'::bigint,
    top bigint DEFAULT '0'::bigint,
    image_url character varying(200),
    create_time timestamp with time zone,
    modified_time timestamp with time zone,
    state character(1) DEFAULT '1'::bpchar
);
ALTER TABLE public.tb_article OWNER TO postgres;
--
-- Name: TABLE tb_article; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_article IS '文章表';
--
-- Name: COLUMN tb_article.id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.id IS 'ID';
--
-- Name: COLUMN tb_article.author_id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.author_id IS '作者ID';
--
-- Name: COLUMN tb_article.title; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.title IS '文章标题';
--
-- Name: COLUMN tb_article.slug; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.slug IS '文章slugify标志';
--
-- Name: COLUMN tb_article.category_id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.category_id IS '文章分类ID';
--
-- Name: COLUMN tb_article.summary; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.summary IS '文章概述';
--
-- Name: COLUMN tb_article.content_markdown; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.content_markdown IS '内容(markdown格式)';
--
-- Name: COLUMN tb_article.views_count; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.views_count IS '浏览量';
--
-- Name: COLUMN tb_article.comments_count; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.comments_count IS '评论数';
--
-- Name: COLUMN tb_article.top; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.top IS '置顶（0:不置顶，1:置顶）';
--
-- Name: COLUMN tb_article.image_url; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.image_url IS '文章图片';
--
-- Name: COLUMN tb_article.create_time; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.create_time IS '发表日期';
--
-- Name: COLUMN tb_article.modified_time; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.modified_time IS '修改日期';
--
-- Name: COLUMN tb_article.state; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article.state IS '状态（1:启用，0:删除）';
--
-- Name: tb_article_tag; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_article_tag (
    tag_id character varying(50) NOT NULL,
    article_id character varying(50) NOT NULL
);
ALTER TABLE public.tb_article_tag OWNER TO postgres;
--
-- Name: TABLE tb_article_tag; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_article_tag IS '文章标签关系表';
--
-- Name: COLUMN tb_article_tag.tag_id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article_tag.tag_id IS '标签ID';
--
-- Name: COLUMN tb_article_tag.article_id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_article_tag.article_id IS '文章ID';
--
-- Name: tb_category; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_category (
    id character varying(40) NOT NULL,
    slug character varying(100) NOT NULL,
    name character varying(10),
    icon character varying(100),
    sort bigint DEFAULT '1'::bigint
);
ALTER TABLE public.tb_category OWNER TO postgres;
--
-- Name: TABLE tb_category; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_category IS '文章分类表';
--
-- Name: COLUMN tb_category.id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_category.id IS '分类ID';
--
-- Name: COLUMN tb_category.slug; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_category.slug IS 'slug';
--
-- Name: COLUMN tb_category.name; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_category.name IS '分类名';
--
-- Name: COLUMN tb_category.icon; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_category.icon IS '分类图标URL';
--
-- Name: COLUMN tb_category.sort; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_category.sort IS '分类排序';
--
-- Name: tb_friend; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_friend (
    id character varying(50) NOT NULL,
    site_name character varying(200),
    path character varying(500),
    avatar character varying(500),
    description character varying(200),
    create_time timestamp with time zone
);
ALTER TABLE public.tb_friend OWNER TO postgres;
--
-- Name: TABLE tb_friend; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_friend IS '友情链接表';
--
-- Name: COLUMN tb_friend.id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_friend.id IS 'ID';
--
-- Name: COLUMN tb_friend.site_name; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_friend.site_name IS '站名';
--
-- Name: COLUMN tb_friend.path; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_friend.path IS '网站URL';
--
-- Name: COLUMN tb_friend.avatar; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_friend.avatar IS '头像';
--
-- Name: COLUMN tb_friend.description; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_friend.description IS '概述';
--
-- Name: COLUMN tb_friend.create_time; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_friend.create_time IS '创建时间';
--
-- Name: tb_menu; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_menu (
    id character varying(50) NOT NULL,
    menu_name character varying(20),
    route_name character varying(20),
    description text,
    menu_url character varying(20),
    menu_icon character varying(50),
    pid character varying(50),
    menu_sort bigint
);
ALTER TABLE public.tb_menu OWNER TO postgres;
--
-- Name: TABLE tb_menu; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_menu IS '菜单表';
--
-- Name: COLUMN tb_menu.id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_menu.id IS 'ID';
--
-- Name: COLUMN tb_menu.menu_name; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_menu.menu_name IS '菜单名称';
--
-- Name: COLUMN tb_menu.route_name; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_menu.route_name IS '前端路由名';
--
-- Name: COLUMN tb_menu.description; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_menu.description IS '菜单描述';
--
-- Name: COLUMN tb_menu.menu_url; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_menu.menu_url IS '菜单地址';
--
-- Name: COLUMN tb_menu.menu_icon; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_menu.menu_icon IS '菜单图标';
--
-- Name: COLUMN tb_menu.pid; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_menu.pid IS '菜单父id';
--
-- Name: COLUMN tb_menu.menu_sort; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_menu.menu_sort IS '菜单排序';
--
-- Name: tb_notice; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_notice (
    id character varying(40) NOT NULL,
    content character varying(255),
    important bigint DEFAULT '0'::bigint,
    sort bigint
);
ALTER TABLE public.tb_notice OWNER TO postgres;
--
-- Name: TABLE tb_notice; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_notice IS '公告表';
--
-- Name: tb_page; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_page (
    id character varying(50) NOT NULL,
    title character varying(50),
    slug character varying(200),
    content_markdown text,
    create_time timestamp with time zone,
    modified_time timestamp with time zone
);
ALTER TABLE public.tb_page OWNER TO postgres;
--
-- Name: TABLE tb_page; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_page IS '页面表';
--
-- Name: COLUMN tb_page.id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_page.id IS 'ID';
--
-- Name: COLUMN tb_page.title; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_page.title IS '页面标题';
--
-- Name: COLUMN tb_page.slug; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_page.slug IS '页面slugify标志';
--
-- Name: COLUMN tb_page.content_markdown; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_page.content_markdown IS '内容(markdown格式)';
--
-- Name: COLUMN tb_page.create_time; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_page.create_time IS '发表日期';
--
-- Name: COLUMN tb_page.modified_time; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_page.modified_time IS '修改日期';
--
-- Name: tb_role; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_role (
    id character varying(50) NOT NULL,
    role_code character varying(20),
    role_name character varying(20),
    description character varying(50)
);
ALTER TABLE public.tb_role OWNER TO postgres;
--
-- Name: COLUMN tb_role.role_name; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_role.role_name IS '角色名';
--
-- Name: COLUMN tb_role.description; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_role.description IS '角色描述';
--
-- Name: tb_role_api; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_role_api (
    role_id character varying(50) NOT NULL,
    api_id character varying(50) NOT NULL
);
ALTER TABLE public.tb_role_api OWNER TO postgres;
--
-- Name: tb_role_menu; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_role_menu (
    role_id character varying(50) NOT NULL,
    menu_id character varying(50) NOT NULL
);
ALTER TABLE public.tb_role_menu OWNER TO postgres;
--
-- Name: tb_site_info; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_site_info (
    id character varying(50) NOT NULL,
    avatar character varying(100),
    slogan character varying(255),
    name character varying(20),
    domain character varying(30),
    notice character varying(50),
    description character varying(255),
    footer character varying(500),
    beian character varying(500),
    banner character varying(500),
    extend character varying(500)
);
ALTER TABLE public.tb_site_info OWNER TO postgres;
--
-- Name: TABLE tb_site_info; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_site_info IS '网站信息表';
--
-- Name: COLUMN tb_site_info.id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.id IS 'ID';
--
-- Name: COLUMN tb_site_info.avatar; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.avatar IS '博主头像';
--
-- Name: COLUMN tb_site_info.slogan; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.slogan IS '网站标语';
--
-- Name: COLUMN tb_site_info.name; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.name IS '博主名';
--
-- Name: COLUMN tb_site_info.domain; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.domain IS '域名';
--
-- Name: COLUMN tb_site_info.notice; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.notice IS '网站通知';
--
-- Name: COLUMN tb_site_info.description; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.description IS '网站简述';
--
-- Name: COLUMN tb_site_info.footer; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.footer IS '网站底部';
--
-- Name: COLUMN tb_site_info.beian; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.beian IS '网站备案';
--
-- Name: COLUMN tb_site_info.banner; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.banner IS '横幅';
--
-- Name: COLUMN tb_site_info.extend; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_site_info.extend IS '扩展json';
--
-- Name: tb_social; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_social (
    id character varying(50) NOT NULL,
    title character varying(20),
    icon character varying(50),
    color character varying(20),
    href character varying(150)
);
ALTER TABLE public.tb_social OWNER TO postgres;
--
-- Name: tb_tag; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_tag (
    id character varying(50) DEFAULT ''::character varying NOT NULL,
    name character varying(10),
    sort bigint DEFAULT '1'::bigint
);
ALTER TABLE public.tb_tag OWNER TO postgres;
--
-- Name: TABLE tb_tag; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_tag IS '文章标签表';
--
-- Name: COLUMN tb_tag.id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_tag.id IS '标签ID';
--
-- Name: COLUMN tb_tag.name; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_tag.name IS '标签名';
--
-- Name: COLUMN tb_tag.sort; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_tag.sort IS '标签排序';
--
-- Name: tb_user; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_user (
    id character varying(50) NOT NULL,
    username character varying(20),
    password character varying(100),
    mobile character varying(20),
    email character varying(50),
    sex character(1),
    birthday timestamp with time zone,
    avatar character varying(150),
    description text,
    create_time timestamp with time zone,
    modified_time timestamp with time zone,
    state character(1) DEFAULT '1'::bpchar,
    fullname character varying(100)
);
ALTER TABLE public.tb_user OWNER TO postgres;
--
-- Name: TABLE tb_user; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_user IS '用户表';
--
-- Name: COLUMN tb_user.id; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.id IS 'ID';
--
-- Name: COLUMN tb_user.username; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.username IS '用户名';
--
-- Name: COLUMN tb_user.password; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.password IS '密码';
--
-- Name: COLUMN tb_user.mobile; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.mobile IS '手机号';
--
-- Name: COLUMN tb_user.email; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.email IS '邮箱';
--
-- Name: COLUMN tb_user.sex; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.sex IS '性别';
--
-- Name: COLUMN tb_user.birthday; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.birthday IS '出生年月日';
--
-- Name: COLUMN tb_user.avatar; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.avatar IS '头像';
--
-- Name: COLUMN tb_user.description; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.description IS '个人简介';
--
-- Name: COLUMN tb_user.create_time; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.create_time IS '创建时间';
--
-- Name: COLUMN tb_user.modified_time; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.modified_time IS '修改时间';
--
-- Name: COLUMN tb_user.state; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON COLUMN public.tb_user.state IS '用户状态';
--
-- Name: tb_user_role; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE public.tb_user_role (
    user_id character varying(50) NOT NULL,
    role_id character varying(50) NOT NULL
);
ALTER TABLE public.tb_user_role OWNER TO postgres;
--
-- Name: TABLE tb_user_role; Type: COMMENT; Schema: public; Owner: postgres
--
COMMENT ON TABLE public.tb_user_role IS '用户角色关联表';
--
-- Name: tb_api idx_23447_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_api
    ADD CONSTRAINT idx_23447_primary PRIMARY KEY (id);
--
-- Name: tb_article idx_23451_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_article
    ADD CONSTRAINT idx_23451_primary PRIMARY KEY (id);
--
-- Name: tb_article_tag idx_23461_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_article_tag
    ADD CONSTRAINT idx_23461_primary PRIMARY KEY (article_id, tag_id);
--
-- Name: tb_category idx_23464_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_category
    ADD CONSTRAINT idx_23464_primary PRIMARY KEY (id);
--
-- Name: tb_friend idx_23468_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_friend
    ADD CONSTRAINT idx_23468_primary PRIMARY KEY (id);
--
-- Name: tb_menu idx_23474_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_menu
    ADD CONSTRAINT idx_23474_primary PRIMARY KEY (id);
--
-- Name: tb_notice idx_23480_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_notice
    ADD CONSTRAINT idx_23480_primary PRIMARY KEY (id);
--
-- Name: tb_page idx_23484_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_page
    ADD CONSTRAINT idx_23484_primary PRIMARY KEY (id);
--
-- Name: tb_role idx_23490_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_role
    ADD CONSTRAINT idx_23490_primary PRIMARY KEY (id);
--
-- Name: tb_role_api idx_23493_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_role_api
    ADD CONSTRAINT idx_23493_primary PRIMARY KEY (role_id, api_id);
--
-- Name: tb_role_menu idx_23496_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_role_menu
    ADD CONSTRAINT idx_23496_primary PRIMARY KEY (role_id, menu_id);
--
-- Name: tb_site_info idx_23499_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_site_info
    ADD CONSTRAINT idx_23499_primary PRIMARY KEY (id);
--
-- Name: tb_social idx_23505_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_social
    ADD CONSTRAINT idx_23505_primary PRIMARY KEY (id);
--
-- Name: tb_tag idx_23508_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_tag
    ADD CONSTRAINT idx_23508_primary PRIMARY KEY (id);
--
-- Name: tb_user idx_23513_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT idx_23513_primary PRIMARY KEY (id);
--
-- Name: tb_user_role idx_23520_primary; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_user_role
    ADD CONSTRAINT idx_23520_primary PRIMARY KEY (user_id, role_id);
--
-- Name: idx_23451_author_id; Type: INDEX; Schema: public; Owner: postgres
--
CREATE INDEX idx_23451_author_id ON public.tb_article USING btree (author_id);
--
-- Name: idx_23451_slug; Type: INDEX; Schema: public; Owner: postgres
--
CREATE INDEX idx_23451_slug ON public.tb_article USING btree (slug);
--
-- Name: idx_23461_tag_id; Type: INDEX; Schema: public; Owner: postgres
--
CREATE INDEX idx_23461_tag_id ON public.tb_article_tag USING btree (tag_id);
--
-- Name: idx_23464_slug; Type: INDEX; Schema: public; Owner: postgres
--
CREATE UNIQUE INDEX idx_23464_slug ON public.tb_category USING btree (slug);
--
-- Name: idx_23474_pid; Type: INDEX; Schema: public; Owner: postgres
--
CREATE INDEX idx_23474_pid ON public.tb_menu USING btree (pid);
--
-- Name: idx_23490_role_code; Type: INDEX; Schema: public; Owner: postgres
--
CREATE UNIQUE INDEX idx_23490_role_code ON public.tb_role USING btree (role_code);
--
-- Name: idx_23493_api_id; Type: INDEX; Schema: public; Owner: postgres
--
CREATE INDEX idx_23493_api_id ON public.tb_role_api USING btree (api_id);
--
-- Name: idx_23496_menu_id; Type: INDEX; Schema: public; Owner: postgres
--
CREATE INDEX idx_23496_menu_id ON public.tb_role_menu USING btree (menu_id);
--
-- Name: idx_23508_name; Type: INDEX; Schema: public; Owner: postgres
--
CREATE UNIQUE INDEX idx_23508_name ON public.tb_tag USING btree (name);
--
-- Name: idx_23513_mobile; Type: INDEX; Schema: public; Owner: postgres
--
CREATE UNIQUE INDEX idx_23513_mobile ON public.tb_user USING btree (mobile);
--
-- Name: idx_23513_username; Type: INDEX; Schema: public; Owner: postgres
--
CREATE UNIQUE INDEX idx_23513_username ON public.tb_user USING btree (username);
--
-- Name: idx_23520_role_id; Type: INDEX; Schema: public; Owner: postgres
--
CREATE INDEX idx_23520_role_id ON public.tb_user_role USING btree (role_id);
--
-- Name: tb_user on_update_current_timestamp; Type: TRIGGER; Schema: public; Owner: postgres
--
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON public.tb_user FOR EACH ROW EXECUTE PROCEDURE public.on_update_current_timestamp_tb_user();
--
-- Name: tb_article_tag tb_article_tag_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_article_tag
    ADD CONSTRAINT tb_article_tag_ibfk_1 FOREIGN KEY (tag_id) REFERENCES public.tb_tag(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Name: tb_article_tag tb_article_tag_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_article_tag
    ADD CONSTRAINT tb_article_tag_ibfk_2 FOREIGN KEY (article_id) REFERENCES public.tb_article(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Name: tb_menu tb_menu_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_menu
    ADD CONSTRAINT tb_menu_ibfk_1 FOREIGN KEY (pid) REFERENCES public.tb_menu(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Name: tb_role_api tb_role_api_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_role_api
    ADD CONSTRAINT tb_role_api_ibfk_1 FOREIGN KEY (role_id) REFERENCES public.tb_role(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Name: tb_role_api tb_role_api_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_role_api
    ADD CONSTRAINT tb_role_api_ibfk_2 FOREIGN KEY (api_id) REFERENCES public.tb_api(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Name: tb_role_menu tb_role_menu_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_role_menu
    ADD CONSTRAINT tb_role_menu_ibfk_1 FOREIGN KEY (role_id) REFERENCES public.tb_role(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Name: tb_role_menu tb_role_menu_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_role_menu
    ADD CONSTRAINT tb_role_menu_ibfk_2 FOREIGN KEY (menu_id) REFERENCES public.tb_menu(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Name: tb_user_role tb_user_role_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_user_role
    ADD CONSTRAINT tb_user_role_ibfk_1 FOREIGN KEY (user_id) REFERENCES public.tb_user(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Name: tb_user_role tb_user_role_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.tb_user_role
    ADD CONSTRAINT tb_user_role_ibfk_2 FOREIGN KEY (role_id) REFERENCES public.tb_role(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- PostgreSQL database dump complete
--
