--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.3
-- Dumped by pg_dump version 9.4.3
-- Started on 2015-08-31 20:13:00 CST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 2615 OID 17885)
-- Name: pribantsa; Type: SCHEMA; Schema: -; Owner: pribantsa
--

CREATE SCHEMA pribantsa;


ALTER SCHEMA pribantsa OWNER TO pribantsa;

SET search_path = pribantsa, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 17886)
-- Name: tbl_bono; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_bono (
    id_bono integer NOT NULL,
    fecha date NOT NULL,
    id_tipo_bono integer NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE tbl_bono OWNER TO pribantsa;

--
-- TOC entry 174 (class 1259 OID 17889)
-- Name: bono_id_bono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE bono_id_bono_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bono_id_bono_seq OWNER TO pribantsa;

--
-- TOC entry 2197 (class 0 OID 0)
-- Dependencies: 174
-- Name: bono_id_bono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE bono_id_bono_seq OWNED BY tbl_bono.id_bono;


--
-- TOC entry 175 (class 1259 OID 17891)
-- Name: tbl_capacitacion; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_capacitacion (
    id_capacitacion integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    lugar text NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE tbl_capacitacion OWNER TO pribantsa;

--
-- TOC entry 176 (class 1259 OID 17897)
-- Name: capacitacion_id_capacitacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE capacitacion_id_capacitacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE capacitacion_id_capacitacion_seq OWNER TO pribantsa;

--
-- TOC entry 2198 (class 0 OID 0)
-- Dependencies: 176
-- Name: capacitacion_id_capacitacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE capacitacion_id_capacitacion_seq OWNED BY tbl_capacitacion.id_capacitacion;


--
-- TOC entry 177 (class 1259 OID 17899)
-- Name: tbl_contrato; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_contrato (
    id_contrato integer NOT NULL,
    id_empleado integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    tipo_contrato text
);


ALTER TABLE tbl_contrato OWNER TO pribantsa;

--
-- TOC entry 178 (class 1259 OID 17905)
-- Name: contrato_id_contrato_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE contrato_id_contrato_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contrato_id_contrato_seq OWNER TO pribantsa;

--
-- TOC entry 2199 (class 0 OID 0)
-- Dependencies: 178
-- Name: contrato_id_contrato_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE contrato_id_contrato_seq OWNED BY tbl_contrato.id_contrato;


--
-- TOC entry 179 (class 1259 OID 17907)
-- Name: tbl_criterio; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_criterio (
    id_criterio integer NOT NULL,
    descripcion text NOT NULL,
    peso integer NOT NULL,
    id_puesto integer NOT NULL
);


ALTER TABLE tbl_criterio OWNER TO pribantsa;

--
-- TOC entry 180 (class 1259 OID 17913)
-- Name: criterio_id_criterio_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE criterio_id_criterio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE criterio_id_criterio_seq OWNER TO pribantsa;

--
-- TOC entry 2200 (class 0 OID 0)
-- Dependencies: 180
-- Name: criterio_id_criterio_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE criterio_id_criterio_seq OWNED BY tbl_criterio.id_criterio;


--
-- TOC entry 181 (class 1259 OID 17915)
-- Name: tbl_departamento; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_departamento (
    id_departamento integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE tbl_departamento OWNER TO pribantsa;

--
-- TOC entry 182 (class 1259 OID 17921)
-- Name: departamento_id_departamento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE departamento_id_departamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE departamento_id_departamento_seq OWNER TO pribantsa;

--
-- TOC entry 2201 (class 0 OID 0)
-- Dependencies: 182
-- Name: departamento_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE departamento_id_departamento_seq OWNED BY tbl_departamento.id_departamento;


--
-- TOC entry 183 (class 1259 OID 17923)
-- Name: tbl_descuento; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_descuento (
    id_descuento integer NOT NULL,
    fecha date NOT NULL,
    id_tipo_descuento integer NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE tbl_descuento OWNER TO pribantsa;

--
-- TOC entry 184 (class 1259 OID 17926)
-- Name: descuento_id_descuento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE descuento_id_descuento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE descuento_id_descuento_seq OWNER TO pribantsa;

--
-- TOC entry 2202 (class 0 OID 0)
-- Dependencies: 184
-- Name: descuento_id_descuento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE descuento_id_descuento_seq OWNED BY tbl_descuento.id_descuento;


--
-- TOC entry 185 (class 1259 OID 17928)
-- Name: tbl_educacion; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_educacion (
    id_educacion integer NOT NULL,
    titulo text NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE tbl_educacion OWNER TO pribantsa;

--
-- TOC entry 186 (class 1259 OID 17934)
-- Name: educacion_id_educacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE educacion_id_educacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE educacion_id_educacion_seq OWNER TO pribantsa;

--
-- TOC entry 2203 (class 0 OID 0)
-- Dependencies: 186
-- Name: educacion_id_educacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE educacion_id_educacion_seq OWNED BY tbl_educacion.id_educacion;


--
-- TOC entry 187 (class 1259 OID 17936)
-- Name: tbl_empleado; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_empleado (
    id_empleado integer NOT NULL,
    dui text NOT NULL,
    isss text NOT NULL,
    afp text NOT NULL,
    sexo "char",
    id_departamento integer NOT NULL,
    nit text NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    fecha_nacimiento date NOT NULL,
    cuenta text NOT NULL,
    salario double precision NOT NULL,
    id_puesto_trabajo integer NOT NULL
);


ALTER TABLE tbl_empleado OWNER TO pribantsa;

--
-- TOC entry 188 (class 1259 OID 17942)
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE empleado_id_empleado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE empleado_id_empleado_seq OWNER TO pribantsa;

--
-- TOC entry 2204 (class 0 OID 0)
-- Dependencies: 188
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE empleado_id_empleado_seq OWNED BY tbl_empleado.id_empleado;


--
-- TOC entry 189 (class 1259 OID 17944)
-- Name: tbl_evaluacion; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_evaluacion (
    id_evaluacion integer NOT NULL,
    puntaje double precision NOT NULL,
    fecha date NOT NULL,
    id_empleado integer NOT NULL,
    id_criterio integer NOT NULL
);


ALTER TABLE tbl_evaluacion OWNER TO pribantsa;

--
-- TOC entry 190 (class 1259 OID 17947)
-- Name: evaluacion_id_evaluacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE evaluacion_id_evaluacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE evaluacion_id_evaluacion_seq OWNER TO pribantsa;

--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 190
-- Name: evaluacion_id_evaluacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE evaluacion_id_evaluacion_seq OWNED BY tbl_evaluacion.id_evaluacion;


--
-- TOC entry 191 (class 1259 OID 17949)
-- Name: tbl_objetivo; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_objetivo (
    id_objetivo integer NOT NULL,
    descripcion text NOT NULL,
    alcance boolean NOT NULL,
    id_puesto_trabajo integer NOT NULL
);


ALTER TABLE tbl_objetivo OWNER TO pribantsa;

--
-- TOC entry 192 (class 1259 OID 17955)
-- Name: objetivo_id_objetivo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE objetivo_id_objetivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE objetivo_id_objetivo_seq OWNER TO pribantsa;

--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 192
-- Name: objetivo_id_objetivo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE objetivo_id_objetivo_seq OWNED BY tbl_objetivo.id_objetivo;


--
-- TOC entry 193 (class 1259 OID 17957)
-- Name: tbl_permiso; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_permiso (
    id_permiso integer NOT NULL,
    remunerado boolean NOT NULL,
    inicio timestamp without time zone NOT NULL,
    fin timestamp without time zone NOT NULL,
    id_empleado integer NOT NULL,
    tipo_permiso text
);


ALTER TABLE tbl_permiso OWNER TO pribantsa;

--
-- TOC entry 2207 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN tbl_permiso.remunerado; Type: COMMENT; Schema: pribantsa; Owner: pribantsa
--

COMMENT ON COLUMN tbl_permiso.remunerado IS 'Si el permiso es remunerado se marcará este campo como "verdadero", en caso no sea remunerado se marcará como "falso".';


--
-- TOC entry 194 (class 1259 OID 17963)
-- Name: permiso_id_permiso_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE permiso_id_permiso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE permiso_id_permiso_seq OWNER TO pribantsa;

--
-- TOC entry 2208 (class 0 OID 0)
-- Dependencies: 194
-- Name: permiso_id_permiso_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE permiso_id_permiso_seq OWNED BY tbl_permiso.id_permiso;


--
-- TOC entry 195 (class 1259 OID 17965)
-- Name: tbl_planilla; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_planilla (
    id_planilla integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    id_empleado integer NOT NULL,
    dias_trabajados integer,
    horas double precision,
    salario_devengado double precision,
    extras_diurnas double precision,
    extras_nocturnas double precision,
    feriado double precision,
    total_descuento double precision
);


ALTER TABLE tbl_planilla OWNER TO pribantsa;

--
-- TOC entry 196 (class 1259 OID 17968)
-- Name: planilla_id_planilla_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE planilla_id_planilla_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE planilla_id_planilla_seq OWNER TO pribantsa;

--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 196
-- Name: planilla_id_planilla_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE planilla_id_planilla_seq OWNED BY tbl_planilla.id_planilla;


--
-- TOC entry 197 (class 1259 OID 17970)
-- Name: tbl_puesto_historico; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_puesto_historico (
    id_historico_puesto integer NOT NULL,
    id_puesto integer NOT NULL,
    id_empleado integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date
);


ALTER TABLE tbl_puesto_historico OWNER TO pribantsa;

--
-- TOC entry 198 (class 1259 OID 17973)
-- Name: puesto_historico_id_historico_puesto_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE puesto_historico_id_historico_puesto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE puesto_historico_id_historico_puesto_seq OWNER TO pribantsa;

--
-- TOC entry 2210 (class 0 OID 0)
-- Dependencies: 198
-- Name: puesto_historico_id_historico_puesto_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE puesto_historico_id_historico_puesto_seq OWNED BY tbl_puesto_historico.id_historico_puesto;


--
-- TOC entry 199 (class 1259 OID 17975)
-- Name: tbl_puesto_trabajo; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_puesto_trabajo (
    id_puesto_trabajo integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    salario_max double precision NOT NULL,
    salario_min double precision NOT NULL
);


ALTER TABLE tbl_puesto_trabajo OWNER TO pribantsa;

--
-- TOC entry 200 (class 1259 OID 17981)
-- Name: puesto_trabajo_id_puesto_trabajo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE puesto_trabajo_id_puesto_trabajo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE puesto_trabajo_id_puesto_trabajo_seq OWNER TO pribantsa;

--
-- TOC entry 2211 (class 0 OID 0)
-- Dependencies: 200
-- Name: puesto_trabajo_id_puesto_trabajo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE puesto_trabajo_id_puesto_trabajo_seq OWNED BY tbl_puesto_trabajo.id_puesto_trabajo;


--
-- TOC entry 201 (class 1259 OID 17983)
-- Name: tbl_reconocimiento; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_reconocimiento (
    id_reconocimiento integer NOT NULL,
    descripcion text NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE tbl_reconocimiento OWNER TO pribantsa;

--
-- TOC entry 202 (class 1259 OID 17989)
-- Name: reconocimiento_id_reconocimiento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE reconocimiento_id_reconocimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reconocimiento_id_reconocimiento_seq OWNER TO pribantsa;

--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 202
-- Name: reconocimiento_id_reconocimiento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE reconocimiento_id_reconocimiento_seq OWNED BY tbl_reconocimiento.id_reconocimiento;


--
-- TOC entry 203 (class 1259 OID 17991)
-- Name: tbl_sancion; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_sancion (
    id_sancion integer NOT NULL,
    gravedad integer NOT NULL,
    descripcion text NOT NULL,
    fecha date NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE tbl_sancion OWNER TO pribantsa;

--
-- TOC entry 204 (class 1259 OID 17997)
-- Name: sancion_id_sancion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE sancion_id_sancion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sancion_id_sancion_seq OWNER TO pribantsa;

--
-- TOC entry 2213 (class 0 OID 0)
-- Dependencies: 204
-- Name: sancion_id_sancion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE sancion_id_sancion_seq OWNED BY tbl_sancion.id_sancion;


--
-- TOC entry 205 (class 1259 OID 17999)
-- Name: tbl_tipo_bono; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_tipo_bono (
    id_tipo_bono integer NOT NULL,
    id_puesto integer NOT NULL,
    porcentaje double precision NOT NULL
);


ALTER TABLE tbl_tipo_bono OWNER TO pribantsa;

--
-- TOC entry 206 (class 1259 OID 18002)
-- Name: tbl_tipo_descuento; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_tipo_descuento (
    id_tipo_descuento integer NOT NULL,
    descripcion text NOT NULL,
    porcentaje double precision NOT NULL
);


ALTER TABLE tbl_tipo_descuento OWNER TO pribantsa;

--
-- TOC entry 207 (class 1259 OID 18008)
-- Name: tbl_vacacion; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_vacacion (
    id_vacacion integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date,
    id_empleado integer NOT NULL
);


ALTER TABLE tbl_vacacion OWNER TO pribantsa;

--
-- TOC entry 208 (class 1259 OID 18011)
-- Name: tipo_bono_id_tipo_bono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE tipo_bono_id_tipo_bono_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_bono_id_tipo_bono_seq OWNER TO pribantsa;

--
-- TOC entry 2214 (class 0 OID 0)
-- Dependencies: 208
-- Name: tipo_bono_id_tipo_bono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE tipo_bono_id_tipo_bono_seq OWNED BY tbl_tipo_bono.id_tipo_bono;


--
-- TOC entry 209 (class 1259 OID 18013)
-- Name: tipo_descuento_id_tipo_descuento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE tipo_descuento_id_tipo_descuento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_descuento_id_tipo_descuento_seq OWNER TO pribantsa;

--
-- TOC entry 2215 (class 0 OID 0)
-- Dependencies: 209
-- Name: tipo_descuento_id_tipo_descuento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE tipo_descuento_id_tipo_descuento_seq OWNED BY tbl_tipo_descuento.id_tipo_descuento;


--
-- TOC entry 210 (class 1259 OID 18015)
-- Name: vacacion_id_vacacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE vacacion_id_vacacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vacacion_id_vacacion_seq OWNER TO pribantsa;

--
-- TOC entry 2216 (class 0 OID 0)
-- Dependencies: 210
-- Name: vacacion_id_vacacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE vacacion_id_vacacion_seq OWNED BY tbl_vacacion.id_vacacion;


--
-- TOC entry 2006 (class 2604 OID 18017)
-- Name: id_bono; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_bono ALTER COLUMN id_bono SET DEFAULT nextval('bono_id_bono_seq'::regclass);


--
-- TOC entry 2007 (class 2604 OID 18018)
-- Name: id_capacitacion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_capacitacion ALTER COLUMN id_capacitacion SET DEFAULT nextval('capacitacion_id_capacitacion_seq'::regclass);


--
-- TOC entry 2008 (class 2604 OID 18019)
-- Name: id_contrato; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_contrato ALTER COLUMN id_contrato SET DEFAULT nextval('contrato_id_contrato_seq'::regclass);


--
-- TOC entry 2009 (class 2604 OID 18020)
-- Name: id_criterio; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_criterio ALTER COLUMN id_criterio SET DEFAULT nextval('criterio_id_criterio_seq'::regclass);


--
-- TOC entry 2010 (class 2604 OID 18021)
-- Name: id_departamento; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_departamento ALTER COLUMN id_departamento SET DEFAULT nextval('departamento_id_departamento_seq'::regclass);


--
-- TOC entry 2011 (class 2604 OID 18022)
-- Name: id_descuento; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_descuento ALTER COLUMN id_descuento SET DEFAULT nextval('descuento_id_descuento_seq'::regclass);


--
-- TOC entry 2012 (class 2604 OID 18023)
-- Name: id_educacion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_educacion ALTER COLUMN id_educacion SET DEFAULT nextval('educacion_id_educacion_seq'::regclass);


--
-- TOC entry 2013 (class 2604 OID 18024)
-- Name: id_empleado; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_empleado ALTER COLUMN id_empleado SET DEFAULT nextval('empleado_id_empleado_seq'::regclass);


--
-- TOC entry 2014 (class 2604 OID 18025)
-- Name: id_evaluacion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_evaluacion ALTER COLUMN id_evaluacion SET DEFAULT nextval('evaluacion_id_evaluacion_seq'::regclass);


--
-- TOC entry 2015 (class 2604 OID 18026)
-- Name: id_objetivo; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_objetivo ALTER COLUMN id_objetivo SET DEFAULT nextval('objetivo_id_objetivo_seq'::regclass);


--
-- TOC entry 2016 (class 2604 OID 18027)
-- Name: id_permiso; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_permiso ALTER COLUMN id_permiso SET DEFAULT nextval('permiso_id_permiso_seq'::regclass);


--
-- TOC entry 2017 (class 2604 OID 18028)
-- Name: id_planilla; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_planilla ALTER COLUMN id_planilla SET DEFAULT nextval('planilla_id_planilla_seq'::regclass);


--
-- TOC entry 2018 (class 2604 OID 18029)
-- Name: id_historico_puesto; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_puesto_historico ALTER COLUMN id_historico_puesto SET DEFAULT nextval('puesto_historico_id_historico_puesto_seq'::regclass);


--
-- TOC entry 2019 (class 2604 OID 18030)
-- Name: id_puesto_trabajo; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_puesto_trabajo ALTER COLUMN id_puesto_trabajo SET DEFAULT nextval('puesto_trabajo_id_puesto_trabajo_seq'::regclass);


--
-- TOC entry 2020 (class 2604 OID 18031)
-- Name: id_reconocimiento; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_reconocimiento ALTER COLUMN id_reconocimiento SET DEFAULT nextval('reconocimiento_id_reconocimiento_seq'::regclass);


--
-- TOC entry 2021 (class 2604 OID 18032)
-- Name: id_sancion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_sancion ALTER COLUMN id_sancion SET DEFAULT nextval('sancion_id_sancion_seq'::regclass);


--
-- TOC entry 2022 (class 2604 OID 18033)
-- Name: id_tipo_bono; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_tipo_bono ALTER COLUMN id_tipo_bono SET DEFAULT nextval('tipo_bono_id_tipo_bono_seq'::regclass);


--
-- TOC entry 2023 (class 2604 OID 18034)
-- Name: id_tipo_descuento; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_tipo_descuento ALTER COLUMN id_tipo_descuento SET DEFAULT nextval('tipo_descuento_id_tipo_descuento_seq'::regclass);


--
-- TOC entry 2024 (class 2604 OID 18035)
-- Name: id_vacacion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_vacacion ALTER COLUMN id_vacacion SET DEFAULT nextval('vacacion_id_vacacion_seq'::regclass);


--
-- TOC entry 2027 (class 2606 OID 18037)
-- Name: pk_bono; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_bono
    ADD CONSTRAINT pk_bono PRIMARY KEY (id_bono);


--
-- TOC entry 2029 (class 2606 OID 18039)
-- Name: pk_capacitacion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_capacitacion
    ADD CONSTRAINT pk_capacitacion PRIMARY KEY (id_capacitacion);


--
-- TOC entry 2031 (class 2606 OID 18041)
-- Name: pk_contrato; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_contrato
    ADD CONSTRAINT pk_contrato PRIMARY KEY (id_contrato);


--
-- TOC entry 2033 (class 2606 OID 18043)
-- Name: pk_criterio; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_criterio
    ADD CONSTRAINT pk_criterio PRIMARY KEY (id_criterio);


--
-- TOC entry 2035 (class 2606 OID 18045)
-- Name: pk_departamento; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (id_departamento);


--
-- TOC entry 2037 (class 2606 OID 18047)
-- Name: pk_descuento; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_descuento
    ADD CONSTRAINT pk_descuento PRIMARY KEY (id_descuento);


--
-- TOC entry 2039 (class 2606 OID 18049)
-- Name: pk_educacion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_educacion
    ADD CONSTRAINT pk_educacion PRIMARY KEY (id_educacion);


--
-- TOC entry 2041 (class 2606 OID 18051)
-- Name: pk_empleado; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (id_empleado);


--
-- TOC entry 2043 (class 2606 OID 18053)
-- Name: pk_evaluacion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_evaluacion
    ADD CONSTRAINT pk_evaluacion PRIMARY KEY (id_evaluacion);


--
-- TOC entry 2045 (class 2606 OID 18055)
-- Name: pk_objetivo; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_objetivo
    ADD CONSTRAINT pk_objetivo PRIMARY KEY (id_objetivo);


--
-- TOC entry 2047 (class 2606 OID 18057)
-- Name: pk_permiso; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_permiso
    ADD CONSTRAINT pk_permiso PRIMARY KEY (id_permiso);


--
-- TOC entry 2049 (class 2606 OID 18059)
-- Name: pk_planilla; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_planilla
    ADD CONSTRAINT pk_planilla PRIMARY KEY (id_planilla);


--
-- TOC entry 2051 (class 2606 OID 18061)
-- Name: pk_puesto_historico; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_puesto_historico
    ADD CONSTRAINT pk_puesto_historico PRIMARY KEY (id_historico_puesto);


--
-- TOC entry 2053 (class 2606 OID 18063)
-- Name: pk_puesto_trabajo; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_puesto_trabajo
    ADD CONSTRAINT pk_puesto_trabajo PRIMARY KEY (id_puesto_trabajo);


--
-- TOC entry 2055 (class 2606 OID 18065)
-- Name: pk_reoconocimiento; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_reconocimiento
    ADD CONSTRAINT pk_reoconocimiento PRIMARY KEY (id_reconocimiento);


--
-- TOC entry 2057 (class 2606 OID 18067)
-- Name: pk_sancion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_sancion
    ADD CONSTRAINT pk_sancion PRIMARY KEY (id_sancion);


--
-- TOC entry 2059 (class 2606 OID 18069)
-- Name: pk_tipo_bono; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_bono
    ADD CONSTRAINT pk_tipo_bono PRIMARY KEY (id_tipo_bono);


--
-- TOC entry 2061 (class 2606 OID 18071)
-- Name: pk_tipo_descuento; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_descuento
    ADD CONSTRAINT pk_tipo_descuento PRIMARY KEY (id_tipo_descuento);


--
-- TOC entry 2063 (class 2606 OID 18073)
-- Name: pk_vacacion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_vacacion
    ADD CONSTRAINT pk_vacacion PRIMARY KEY (id_vacacion);


--
-- TOC entry 2025 (class 1259 OID 18074)
-- Name: fki_bono_empleado; Type: INDEX; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE INDEX fki_bono_empleado ON tbl_bono USING btree (id_empleado);


--
-- TOC entry 2064 (class 2606 OID 18075)
-- Name: fk_bono_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_bono
    ADD CONSTRAINT fk_bono_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2065 (class 2606 OID 18080)
-- Name: fk_capacitacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_capacitacion
    ADD CONSTRAINT fk_capacitacion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2066 (class 2606 OID 18085)
-- Name: fk_contrato_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_contrato
    ADD CONSTRAINT fk_contrato_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2067 (class 2606 OID 18090)
-- Name: fk_criterio_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_criterio
    ADD CONSTRAINT fk_criterio_puesto FOREIGN KEY (id_puesto) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2068 (class 2606 OID 18100)
-- Name: fk_descuento_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_descuento
    ADD CONSTRAINT fk_descuento_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2069 (class 2606 OID 18105)
-- Name: fk_descuento_tipo_descuento; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_descuento
    ADD CONSTRAINT fk_descuento_tipo_descuento FOREIGN KEY (id_tipo_descuento) REFERENCES tbl_tipo_descuento(id_tipo_descuento) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2070 (class 2606 OID 18110)
-- Name: fk_educacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_educacion
    ADD CONSTRAINT fk_educacion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2071 (class 2606 OID 18115)
-- Name: fk_empleado_departamento; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_empleado
    ADD CONSTRAINT fk_empleado_departamento FOREIGN KEY (id_departamento) REFERENCES tbl_departamento(id_departamento) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2072 (class 2606 OID 18120)
-- Name: fk_empleado_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_empleado
    ADD CONSTRAINT fk_empleado_puesto FOREIGN KEY (id_puesto_trabajo) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo);


--
-- TOC entry 2073 (class 2606 OID 18125)
-- Name: fk_evaluacion_criterio; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_evaluacion
    ADD CONSTRAINT fk_evaluacion_criterio FOREIGN KEY (id_criterio) REFERENCES tbl_criterio(id_criterio) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2074 (class 2606 OID 18130)
-- Name: fk_evaluacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_evaluacion
    ADD CONSTRAINT fk_evaluacion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2075 (class 2606 OID 18135)
-- Name: fk_objetivo_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_objetivo
    ADD CONSTRAINT fk_objetivo_puesto FOREIGN KEY (id_puesto_trabajo) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2076 (class 2606 OID 18140)
-- Name: fk_permiso_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_permiso
    ADD CONSTRAINT fk_permiso_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2077 (class 2606 OID 18145)
-- Name: fk_planilla_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_planilla
    ADD CONSTRAINT fk_planilla_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2078 (class 2606 OID 18150)
-- Name: fk_puesto_historico_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_puesto_historico
    ADD CONSTRAINT fk_puesto_historico_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2079 (class 2606 OID 18155)
-- Name: fk_puesto_historico_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_puesto_historico
    ADD CONSTRAINT fk_puesto_historico_puesto FOREIGN KEY (id_puesto) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2080 (class 2606 OID 18160)
-- Name: fk_reconocimiento_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_reconocimiento
    ADD CONSTRAINT fk_reconocimiento_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2081 (class 2606 OID 18165)
-- Name: fk_sancion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_sancion
    ADD CONSTRAINT fk_sancion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2082 (class 2606 OID 18170)
-- Name: fk_tipo_bono_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_tipo_bono
    ADD CONSTRAINT fk_tipo_bono_puesto FOREIGN KEY (id_puesto) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2083 (class 2606 OID 18175)
-- Name: fk_vacacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_vacacion
    ADD CONSTRAINT fk_vacacion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2015-08-31 20:13:00 CST

--
-- PostgreSQL database dump complete
--

