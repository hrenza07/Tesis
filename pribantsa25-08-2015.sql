--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.15
-- Dumped by pg_dump version 9.1.15
-- Started on 2015-08-25 16:02:38

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 6 (class 2615 OID 18467)
-- Name: pribantsa; Type: SCHEMA; Schema: -; Owner: pribantsa
--

CREATE SCHEMA pribantsa;


ALTER SCHEMA pribantsa OWNER TO pribantsa;

SET search_path = pribantsa, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 162 (class 1259 OID 18468)
-- Dependencies: 6
-- Name: tbl_bono; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_bono (
    id_bono integer NOT NULL,
    fecha date NOT NULL,
    id_tipo_bono integer NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE pribantsa.tbl_bono OWNER TO pribantsa;

--
-- TOC entry 163 (class 1259 OID 18471)
-- Dependencies: 162 6
-- Name: bono_id_bono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE bono_id_bono_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.bono_id_bono_seq OWNER TO pribantsa;

--
-- TOC entry 2124 (class 0 OID 0)
-- Dependencies: 163
-- Name: bono_id_bono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE bono_id_bono_seq OWNED BY tbl_bono.id_bono;


--
-- TOC entry 164 (class 1259 OID 18473)
-- Dependencies: 6
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


ALTER TABLE pribantsa.tbl_capacitacion OWNER TO pribantsa;

--
-- TOC entry 165 (class 1259 OID 18479)
-- Dependencies: 6 164
-- Name: capacitacion_id_capacitacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE capacitacion_id_capacitacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.capacitacion_id_capacitacion_seq OWNER TO pribantsa;

--
-- TOC entry 2125 (class 0 OID 0)
-- Dependencies: 165
-- Name: capacitacion_id_capacitacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE capacitacion_id_capacitacion_seq OWNED BY tbl_capacitacion.id_capacitacion;


--
-- TOC entry 166 (class 1259 OID 18481)
-- Dependencies: 6
-- Name: tbl_contrato; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_contrato (
    id_contrato integer NOT NULL,
    id_empleado integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    tipo_contrato text
);


ALTER TABLE pribantsa.tbl_contrato OWNER TO pribantsa;

--
-- TOC entry 167 (class 1259 OID 18484)
-- Dependencies: 6 166
-- Name: contrato_id_contrato_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE contrato_id_contrato_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.contrato_id_contrato_seq OWNER TO pribantsa;

--
-- TOC entry 2126 (class 0 OID 0)
-- Dependencies: 167
-- Name: contrato_id_contrato_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE contrato_id_contrato_seq OWNED BY tbl_contrato.id_contrato;


--
-- TOC entry 168 (class 1259 OID 18494)
-- Dependencies: 6
-- Name: tbl_criterio; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_criterio (
    id_criterio integer NOT NULL,
    descripcion text NOT NULL,
    peso integer NOT NULL,
    id_puesto integer NOT NULL
);


ALTER TABLE pribantsa.tbl_criterio OWNER TO pribantsa;

--
-- TOC entry 169 (class 1259 OID 18500)
-- Dependencies: 168 6
-- Name: criterio_id_criterio_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE criterio_id_criterio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.criterio_id_criterio_seq OWNER TO pribantsa;

--
-- TOC entry 2127 (class 0 OID 0)
-- Dependencies: 169
-- Name: criterio_id_criterio_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE criterio_id_criterio_seq OWNED BY tbl_criterio.id_criterio;


--
-- TOC entry 170 (class 1259 OID 18502)
-- Dependencies: 6
-- Name: tbl_departamento; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_departamento (
    id_departamento integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    id_empleado_jefe integer NOT NULL
);


ALTER TABLE pribantsa.tbl_departamento OWNER TO pribantsa;

--
-- TOC entry 171 (class 1259 OID 18508)
-- Dependencies: 6 170
-- Name: departamento_id_departamento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE departamento_id_departamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.departamento_id_departamento_seq OWNER TO pribantsa;

--
-- TOC entry 2128 (class 0 OID 0)
-- Dependencies: 171
-- Name: departamento_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE departamento_id_departamento_seq OWNED BY tbl_departamento.id_departamento;


--
-- TOC entry 172 (class 1259 OID 18510)
-- Dependencies: 6
-- Name: tbl_descuento; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_descuento (
    id_descuento integer NOT NULL,
    fecha date NOT NULL,
    id_tipo_descuento integer NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE pribantsa.tbl_descuento OWNER TO pribantsa;

--
-- TOC entry 173 (class 1259 OID 18513)
-- Dependencies: 6 172
-- Name: descuento_id_descuento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE descuento_id_descuento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.descuento_id_descuento_seq OWNER TO pribantsa;

--
-- TOC entry 2129 (class 0 OID 0)
-- Dependencies: 173
-- Name: descuento_id_descuento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE descuento_id_descuento_seq OWNED BY tbl_descuento.id_descuento;


--
-- TOC entry 174 (class 1259 OID 18515)
-- Dependencies: 6
-- Name: tbl_educacion; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_educacion (
    id_educacion integer NOT NULL,
    titulo text NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE pribantsa.tbl_educacion OWNER TO pribantsa;

--
-- TOC entry 175 (class 1259 OID 18521)
-- Dependencies: 174 6
-- Name: educacion_id_educacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE educacion_id_educacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.educacion_id_educacion_seq OWNER TO pribantsa;

--
-- TOC entry 2130 (class 0 OID 0)
-- Dependencies: 175
-- Name: educacion_id_educacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE educacion_id_educacion_seq OWNED BY tbl_educacion.id_educacion;


--
-- TOC entry 176 (class 1259 OID 18523)
-- Dependencies: 6
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


ALTER TABLE pribantsa.tbl_empleado OWNER TO pribantsa;

--
-- TOC entry 177 (class 1259 OID 18529)
-- Dependencies: 176 6
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE empleado_id_empleado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.empleado_id_empleado_seq OWNER TO pribantsa;

--
-- TOC entry 2131 (class 0 OID 0)
-- Dependencies: 177
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE empleado_id_empleado_seq OWNED BY tbl_empleado.id_empleado;


--
-- TOC entry 178 (class 1259 OID 18531)
-- Dependencies: 6
-- Name: tbl_evaluacion; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_evaluacion (
    id_evaluacion integer NOT NULL,
    puntaje double precision NOT NULL,
    fecha date NOT NULL,
    id_empleado integer NOT NULL,
    id_criterio integer NOT NULL
);


ALTER TABLE pribantsa.tbl_evaluacion OWNER TO pribantsa;

--
-- TOC entry 179 (class 1259 OID 18534)
-- Dependencies: 178 6
-- Name: evaluacion_id_evaluacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE evaluacion_id_evaluacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.evaluacion_id_evaluacion_seq OWNER TO pribantsa;

--
-- TOC entry 2132 (class 0 OID 0)
-- Dependencies: 179
-- Name: evaluacion_id_evaluacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE evaluacion_id_evaluacion_seq OWNED BY tbl_evaluacion.id_evaluacion;


--
-- TOC entry 180 (class 1259 OID 18536)
-- Dependencies: 6
-- Name: tbl_objetivo; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_objetivo (
    id_objetivo integer NOT NULL,
    descripcion text NOT NULL,
    alcance boolean NOT NULL,
    id_puesto_trabajo integer NOT NULL
);


ALTER TABLE pribantsa.tbl_objetivo OWNER TO pribantsa;

--
-- TOC entry 181 (class 1259 OID 18542)
-- Dependencies: 180 6
-- Name: objetivo_id_objetivo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE objetivo_id_objetivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.objetivo_id_objetivo_seq OWNER TO pribantsa;

--
-- TOC entry 2133 (class 0 OID 0)
-- Dependencies: 181
-- Name: objetivo_id_objetivo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE objetivo_id_objetivo_seq OWNED BY tbl_objetivo.id_objetivo;


--
-- TOC entry 182 (class 1259 OID 18544)
-- Dependencies: 6
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


ALTER TABLE pribantsa.tbl_permiso OWNER TO pribantsa;

--
-- TOC entry 2134 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN tbl_permiso.remunerado; Type: COMMENT; Schema: pribantsa; Owner: pribantsa
--

COMMENT ON COLUMN tbl_permiso.remunerado IS 'Si el permiso es remunerado se marcará este campo como "verdadero", en caso no sea remunerado se marcará como "falso".';


--
-- TOC entry 183 (class 1259 OID 18547)
-- Dependencies: 6 182
-- Name: permiso_id_permiso_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE permiso_id_permiso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.permiso_id_permiso_seq OWNER TO pribantsa;

--
-- TOC entry 2135 (class 0 OID 0)
-- Dependencies: 183
-- Name: permiso_id_permiso_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE permiso_id_permiso_seq OWNED BY tbl_permiso.id_permiso;


--
-- TOC entry 184 (class 1259 OID 18549)
-- Dependencies: 6
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


ALTER TABLE pribantsa.tbl_planilla OWNER TO pribantsa;

--
-- TOC entry 185 (class 1259 OID 18552)
-- Dependencies: 184 6
-- Name: planilla_id_planilla_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE planilla_id_planilla_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.planilla_id_planilla_seq OWNER TO pribantsa;

--
-- TOC entry 2136 (class 0 OID 0)
-- Dependencies: 185
-- Name: planilla_id_planilla_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE planilla_id_planilla_seq OWNED BY tbl_planilla.id_planilla;


--
-- TOC entry 186 (class 1259 OID 18554)
-- Dependencies: 6
-- Name: tbl_puesto_historico; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_puesto_historico (
    id_historico_puesto integer NOT NULL,
    id_puesto integer NOT NULL,
    id_empleado integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date
);


ALTER TABLE pribantsa.tbl_puesto_historico OWNER TO pribantsa;

--
-- TOC entry 187 (class 1259 OID 18557)
-- Dependencies: 186 6
-- Name: puesto_historico_id_historico_puesto_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE puesto_historico_id_historico_puesto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.puesto_historico_id_historico_puesto_seq OWNER TO pribantsa;

--
-- TOC entry 2137 (class 0 OID 0)
-- Dependencies: 187
-- Name: puesto_historico_id_historico_puesto_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE puesto_historico_id_historico_puesto_seq OWNED BY tbl_puesto_historico.id_historico_puesto;


--
-- TOC entry 188 (class 1259 OID 18559)
-- Dependencies: 6
-- Name: tbl_puesto_trabajo; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_puesto_trabajo (
    id_puesto_trabajo integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    salario_max double precision NOT NULL,
    salario_min double precision NOT NULL
);


ALTER TABLE pribantsa.tbl_puesto_trabajo OWNER TO pribantsa;

--
-- TOC entry 189 (class 1259 OID 18565)
-- Dependencies: 6 188
-- Name: puesto_trabajo_id_puesto_trabajo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE puesto_trabajo_id_puesto_trabajo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.puesto_trabajo_id_puesto_trabajo_seq OWNER TO pribantsa;

--
-- TOC entry 2138 (class 0 OID 0)
-- Dependencies: 189
-- Name: puesto_trabajo_id_puesto_trabajo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE puesto_trabajo_id_puesto_trabajo_seq OWNED BY tbl_puesto_trabajo.id_puesto_trabajo;


--
-- TOC entry 190 (class 1259 OID 18567)
-- Dependencies: 6
-- Name: tbl_reconocimiento; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_reconocimiento (
    id_reconocimiento integer NOT NULL,
    descripcion text NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE pribantsa.tbl_reconocimiento OWNER TO pribantsa;

--
-- TOC entry 191 (class 1259 OID 18573)
-- Dependencies: 190 6
-- Name: reconocimiento_id_reconocimiento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE reconocimiento_id_reconocimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.reconocimiento_id_reconocimiento_seq OWNER TO pribantsa;

--
-- TOC entry 2139 (class 0 OID 0)
-- Dependencies: 191
-- Name: reconocimiento_id_reconocimiento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE reconocimiento_id_reconocimiento_seq OWNED BY tbl_reconocimiento.id_reconocimiento;


--
-- TOC entry 192 (class 1259 OID 18575)
-- Dependencies: 6
-- Name: tbl_sancion; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_sancion (
    id_sancion integer NOT NULL,
    gravedad integer NOT NULL,
    descripcion text NOT NULL,
    fecha date NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE pribantsa.tbl_sancion OWNER TO pribantsa;

--
-- TOC entry 193 (class 1259 OID 18581)
-- Dependencies: 192 6
-- Name: sancion_id_sancion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE sancion_id_sancion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.sancion_id_sancion_seq OWNER TO pribantsa;

--
-- TOC entry 2140 (class 0 OID 0)
-- Dependencies: 193
-- Name: sancion_id_sancion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE sancion_id_sancion_seq OWNED BY tbl_sancion.id_sancion;


--
-- TOC entry 194 (class 1259 OID 18591)
-- Dependencies: 6
-- Name: tbl_tipo_bono; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_tipo_bono (
    id_tipo_bono integer NOT NULL,
    id_puesto integer NOT NULL,
    porcentaje double precision NOT NULL
);


ALTER TABLE pribantsa.tbl_tipo_bono OWNER TO pribantsa;

--
-- TOC entry 196 (class 1259 OID 18604)
-- Dependencies: 6
-- Name: tbl_tipo_descuento; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_tipo_descuento (
    id_tipo_descuento integer NOT NULL,
    descripcion text NOT NULL,
    porcentaje double precision NOT NULL
);


ALTER TABLE pribantsa.tbl_tipo_descuento OWNER TO pribantsa;

--
-- TOC entry 198 (class 1259 OID 18625)
-- Dependencies: 6
-- Name: tbl_vacacion; Type: TABLE; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE TABLE tbl_vacacion (
    id_vacacion integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date,
    id_empleado integer NOT NULL
);


ALTER TABLE pribantsa.tbl_vacacion OWNER TO pribantsa;

--
-- TOC entry 195 (class 1259 OID 18594)
-- Dependencies: 6 194
-- Name: tipo_bono_id_tipo_bono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE tipo_bono_id_tipo_bono_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.tipo_bono_id_tipo_bono_seq OWNER TO pribantsa;

--
-- TOC entry 2141 (class 0 OID 0)
-- Dependencies: 195
-- Name: tipo_bono_id_tipo_bono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE tipo_bono_id_tipo_bono_seq OWNED BY tbl_tipo_bono.id_tipo_bono;


--
-- TOC entry 197 (class 1259 OID 18610)
-- Dependencies: 6 196
-- Name: tipo_descuento_id_tipo_descuento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE tipo_descuento_id_tipo_descuento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.tipo_descuento_id_tipo_descuento_seq OWNER TO pribantsa;

--
-- TOC entry 2142 (class 0 OID 0)
-- Dependencies: 197
-- Name: tipo_descuento_id_tipo_descuento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE tipo_descuento_id_tipo_descuento_seq OWNED BY tbl_tipo_descuento.id_tipo_descuento;


--
-- TOC entry 199 (class 1259 OID 18628)
-- Dependencies: 198 6
-- Name: vacacion_id_vacacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: pribantsa
--

CREATE SEQUENCE vacacion_id_vacacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pribantsa.vacacion_id_vacacion_seq OWNER TO pribantsa;

--
-- TOC entry 2143 (class 0 OID 0)
-- Dependencies: 199
-- Name: vacacion_id_vacacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: pribantsa
--

ALTER SEQUENCE vacacion_id_vacacion_seq OWNED BY tbl_vacacion.id_vacacion;


--
-- TOC entry 1902 (class 2604 OID 19171)
-- Dependencies: 163 162
-- Name: id_bono; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_bono ALTER COLUMN id_bono SET DEFAULT nextval('bono_id_bono_seq'::regclass);


--
-- TOC entry 1903 (class 2604 OID 19177)
-- Dependencies: 165 164
-- Name: id_capacitacion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_capacitacion ALTER COLUMN id_capacitacion SET DEFAULT nextval('capacitacion_id_capacitacion_seq'::regclass);


--
-- TOC entry 1904 (class 2604 OID 19183)
-- Dependencies: 167 166
-- Name: id_contrato; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_contrato ALTER COLUMN id_contrato SET DEFAULT nextval('contrato_id_contrato_seq'::regclass);


--
-- TOC entry 1905 (class 2604 OID 19189)
-- Dependencies: 169 168
-- Name: id_criterio; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_criterio ALTER COLUMN id_criterio SET DEFAULT nextval('criterio_id_criterio_seq'::regclass);


--
-- TOC entry 1906 (class 2604 OID 19195)
-- Dependencies: 171 170
-- Name: id_departamento; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_departamento ALTER COLUMN id_departamento SET DEFAULT nextval('departamento_id_departamento_seq'::regclass);


--
-- TOC entry 1907 (class 2604 OID 19201)
-- Dependencies: 173 172
-- Name: id_descuento; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_descuento ALTER COLUMN id_descuento SET DEFAULT nextval('descuento_id_descuento_seq'::regclass);


--
-- TOC entry 1908 (class 2604 OID 19212)
-- Dependencies: 175 174
-- Name: id_educacion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_educacion ALTER COLUMN id_educacion SET DEFAULT nextval('educacion_id_educacion_seq'::regclass);


--
-- TOC entry 1909 (class 2604 OID 19218)
-- Dependencies: 177 176
-- Name: id_empleado; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_empleado ALTER COLUMN id_empleado SET DEFAULT nextval('empleado_id_empleado_seq'::regclass);


--
-- TOC entry 1910 (class 2604 OID 19229)
-- Dependencies: 179 178
-- Name: id_evaluacion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_evaluacion ALTER COLUMN id_evaluacion SET DEFAULT nextval('evaluacion_id_evaluacion_seq'::regclass);


--
-- TOC entry 1911 (class 2604 OID 19240)
-- Dependencies: 181 180
-- Name: id_objetivo; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_objetivo ALTER COLUMN id_objetivo SET DEFAULT nextval('objetivo_id_objetivo_seq'::regclass);


--
-- TOC entry 1912 (class 2604 OID 19246)
-- Dependencies: 183 182
-- Name: id_permiso; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_permiso ALTER COLUMN id_permiso SET DEFAULT nextval('permiso_id_permiso_seq'::regclass);


--
-- TOC entry 1913 (class 2604 OID 19252)
-- Dependencies: 185 184
-- Name: id_planilla; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_planilla ALTER COLUMN id_planilla SET DEFAULT nextval('planilla_id_planilla_seq'::regclass);


--
-- TOC entry 1914 (class 2604 OID 19258)
-- Dependencies: 187 186
-- Name: id_historico_puesto; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_puesto_historico ALTER COLUMN id_historico_puesto SET DEFAULT nextval('puesto_historico_id_historico_puesto_seq'::regclass);


--
-- TOC entry 1915 (class 2604 OID 19269)
-- Dependencies: 189 188
-- Name: id_puesto_trabajo; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_puesto_trabajo ALTER COLUMN id_puesto_trabajo SET DEFAULT nextval('puesto_trabajo_id_puesto_trabajo_seq'::regclass);


--
-- TOC entry 1916 (class 2604 OID 19270)
-- Dependencies: 191 190
-- Name: id_reconocimiento; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_reconocimiento ALTER COLUMN id_reconocimiento SET DEFAULT nextval('reconocimiento_id_reconocimiento_seq'::regclass);


--
-- TOC entry 1917 (class 2604 OID 19276)
-- Dependencies: 193 192
-- Name: id_sancion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_sancion ALTER COLUMN id_sancion SET DEFAULT nextval('sancion_id_sancion_seq'::regclass);


--
-- TOC entry 1918 (class 2604 OID 19282)
-- Dependencies: 195 194
-- Name: id_tipo_bono; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_tipo_bono ALTER COLUMN id_tipo_bono SET DEFAULT nextval('tipo_bono_id_tipo_bono_seq'::regclass);


--
-- TOC entry 1919 (class 2604 OID 19288)
-- Dependencies: 197 196
-- Name: id_tipo_descuento; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_tipo_descuento ALTER COLUMN id_tipo_descuento SET DEFAULT nextval('tipo_descuento_id_tipo_descuento_seq'::regclass);


--
-- TOC entry 1920 (class 2604 OID 19289)
-- Dependencies: 199 198
-- Name: id_vacacion; Type: DEFAULT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_vacacion ALTER COLUMN id_vacacion SET DEFAULT nextval('vacacion_id_vacacion_seq'::regclass);


--
-- TOC entry 2144 (class 0 OID 0)
-- Dependencies: 163
-- Name: bono_id_bono_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('bono_id_bono_seq', 1, false);


--
-- TOC entry 2145 (class 0 OID 0)
-- Dependencies: 165
-- Name: capacitacion_id_capacitacion_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('capacitacion_id_capacitacion_seq', 1, false);


--
-- TOC entry 2146 (class 0 OID 0)
-- Dependencies: 167
-- Name: contrato_id_contrato_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('contrato_id_contrato_seq', 1, false);


--
-- TOC entry 2147 (class 0 OID 0)
-- Dependencies: 169
-- Name: criterio_id_criterio_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('criterio_id_criterio_seq', 1, false);


--
-- TOC entry 2148 (class 0 OID 0)
-- Dependencies: 171
-- Name: departamento_id_departamento_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('departamento_id_departamento_seq', 1, false);


--
-- TOC entry 2149 (class 0 OID 0)
-- Dependencies: 173
-- Name: descuento_id_descuento_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('descuento_id_descuento_seq', 1, false);


--
-- TOC entry 2150 (class 0 OID 0)
-- Dependencies: 175
-- Name: educacion_id_educacion_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('educacion_id_educacion_seq', 1, false);


--
-- TOC entry 2151 (class 0 OID 0)
-- Dependencies: 177
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('empleado_id_empleado_seq', 1, false);


--
-- TOC entry 2152 (class 0 OID 0)
-- Dependencies: 179
-- Name: evaluacion_id_evaluacion_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('evaluacion_id_evaluacion_seq', 1, false);


--
-- TOC entry 2153 (class 0 OID 0)
-- Dependencies: 181
-- Name: objetivo_id_objetivo_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('objetivo_id_objetivo_seq', 1, false);


--
-- TOC entry 2154 (class 0 OID 0)
-- Dependencies: 183
-- Name: permiso_id_permiso_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('permiso_id_permiso_seq', 1, false);


--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 185
-- Name: planilla_id_planilla_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('planilla_id_planilla_seq', 1, false);


--
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 187
-- Name: puesto_historico_id_historico_puesto_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('puesto_historico_id_historico_puesto_seq', 1, false);


--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 189
-- Name: puesto_trabajo_id_puesto_trabajo_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('puesto_trabajo_id_puesto_trabajo_seq', 1, false);


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 191
-- Name: reconocimiento_id_reconocimiento_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('reconocimiento_id_reconocimiento_seq', 1, false);


--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 193
-- Name: sancion_id_sancion_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('sancion_id_sancion_seq', 1, false);


--
-- TOC entry 2082 (class 0 OID 18468)
-- Dependencies: 162 2120
-- Data for Name: tbl_bono; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_bono (id_bono, fecha, id_tipo_bono, id_empleado) FROM stdin;
\.


--
-- TOC entry 2084 (class 0 OID 18473)
-- Dependencies: 164 2120
-- Data for Name: tbl_capacitacion; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_capacitacion (id_capacitacion, nombre, descripcion, lugar, fecha_inicio, fecha_fin, id_empleado) FROM stdin;
\.


--
-- TOC entry 2086 (class 0 OID 18481)
-- Dependencies: 166 2120
-- Data for Name: tbl_contrato; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_contrato (id_contrato, id_empleado, fecha_inicio, fecha_fin, tipo_contrato) FROM stdin;
\.


--
-- TOC entry 2088 (class 0 OID 18494)
-- Dependencies: 168 2120
-- Data for Name: tbl_criterio; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_criterio (id_criterio, descripcion, peso, id_puesto) FROM stdin;
\.


--
-- TOC entry 2090 (class 0 OID 18502)
-- Dependencies: 170 2120
-- Data for Name: tbl_departamento; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_departamento (id_departamento, nombre, descripcion, id_empleado_jefe) FROM stdin;
\.


--
-- TOC entry 2092 (class 0 OID 18510)
-- Dependencies: 172 2120
-- Data for Name: tbl_descuento; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_descuento (id_descuento, fecha, id_tipo_descuento, id_empleado) FROM stdin;
\.


--
-- TOC entry 2094 (class 0 OID 18515)
-- Dependencies: 174 2120
-- Data for Name: tbl_educacion; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_educacion (id_educacion, titulo, fecha_inicio, fecha_fin, id_empleado) FROM stdin;
\.


--
-- TOC entry 2096 (class 0 OID 18523)
-- Dependencies: 176 2120
-- Data for Name: tbl_empleado; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_empleado (id_empleado, dui, isss, afp, sexo, id_departamento, nit, nombre, apellido, fecha_nacimiento, cuenta, salario, id_puesto_trabajo) FROM stdin;
\.


--
-- TOC entry 2098 (class 0 OID 18531)
-- Dependencies: 178 2120
-- Data for Name: tbl_evaluacion; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_evaluacion (id_evaluacion, puntaje, fecha, id_empleado, id_criterio) FROM stdin;
\.


--
-- TOC entry 2100 (class 0 OID 18536)
-- Dependencies: 180 2120
-- Data for Name: tbl_objetivo; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_objetivo (id_objetivo, descripcion, alcance, id_puesto_trabajo) FROM stdin;
\.


--
-- TOC entry 2102 (class 0 OID 18544)
-- Dependencies: 182 2120
-- Data for Name: tbl_permiso; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_permiso (id_permiso, remunerado, inicio, fin, id_empleado, tipo_permiso) FROM stdin;
\.


--
-- TOC entry 2104 (class 0 OID 18549)
-- Dependencies: 184 2120
-- Data for Name: tbl_planilla; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_planilla (id_planilla, fecha_inicio, fecha_fin, id_empleado, dias_trabajados, horas, salario_devengado, extras_diurnas, extras_nocturnas, feriado, total_descuento) FROM stdin;
\.


--
-- TOC entry 2106 (class 0 OID 18554)
-- Dependencies: 186 2120
-- Data for Name: tbl_puesto_historico; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_puesto_historico (id_historico_puesto, id_puesto, id_empleado, fecha_inicio, fecha_fin) FROM stdin;
\.


--
-- TOC entry 2108 (class 0 OID 18559)
-- Dependencies: 188 2120
-- Data for Name: tbl_puesto_trabajo; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_puesto_trabajo (id_puesto_trabajo, nombre, descripcion, salario_max, salario_min) FROM stdin;
\.


--
-- TOC entry 2110 (class 0 OID 18567)
-- Dependencies: 190 2120
-- Data for Name: tbl_reconocimiento; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_reconocimiento (id_reconocimiento, descripcion, id_empleado) FROM stdin;
\.


--
-- TOC entry 2112 (class 0 OID 18575)
-- Dependencies: 192 2120
-- Data for Name: tbl_sancion; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_sancion (id_sancion, gravedad, descripcion, fecha, id_empleado) FROM stdin;
\.


--
-- TOC entry 2114 (class 0 OID 18591)
-- Dependencies: 194 2120
-- Data for Name: tbl_tipo_bono; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_tipo_bono (id_tipo_bono, id_puesto, porcentaje) FROM stdin;
\.


--
-- TOC entry 2116 (class 0 OID 18604)
-- Dependencies: 196 2120
-- Data for Name: tbl_tipo_descuento; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_tipo_descuento (id_tipo_descuento, descripcion, porcentaje) FROM stdin;
\.


--
-- TOC entry 2118 (class 0 OID 18625)
-- Dependencies: 198 2120
-- Data for Name: tbl_vacacion; Type: TABLE DATA; Schema: pribantsa; Owner: pribantsa
--

COPY tbl_vacacion (id_vacacion, fecha_inicio, fecha_fin, id_empleado) FROM stdin;
\.


--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 195
-- Name: tipo_bono_id_tipo_bono_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('tipo_bono_id_tipo_bono_seq', 1, false);


--
-- TOC entry 2161 (class 0 OID 0)
-- Dependencies: 197
-- Name: tipo_descuento_id_tipo_descuento_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('tipo_descuento_id_tipo_descuento_seq', 1, false);


--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 199
-- Name: vacacion_id_vacacion_seq; Type: SEQUENCE SET; Schema: pribantsa; Owner: pribantsa
--

SELECT pg_catalog.setval('vacacion_id_vacacion_seq', 1, false);


--
-- TOC entry 1923 (class 2606 OID 18940)
-- Dependencies: 162 162 2121
-- Name: pk_bono; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_bono
    ADD CONSTRAINT pk_bono PRIMARY KEY (id_bono);


--
-- TOC entry 1925 (class 2606 OID 18949)
-- Dependencies: 164 164 2121
-- Name: pk_capacitacion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_capacitacion
    ADD CONSTRAINT pk_capacitacion PRIMARY KEY (id_capacitacion);


--
-- TOC entry 1927 (class 2606 OID 18961)
-- Dependencies: 166 166 2121
-- Name: pk_contrato; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_contrato
    ADD CONSTRAINT pk_contrato PRIMARY KEY (id_contrato);


--
-- TOC entry 1929 (class 2606 OID 19040)
-- Dependencies: 168 168 2121
-- Name: pk_criterio; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_criterio
    ADD CONSTRAINT pk_criterio PRIMARY KEY (id_criterio);


--
-- TOC entry 1931 (class 2606 OID 19047)
-- Dependencies: 170 170 2121
-- Name: pk_departamento; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (id_departamento);


--
-- TOC entry 1933 (class 2606 OID 19054)
-- Dependencies: 172 172 2121
-- Name: pk_descuento; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_descuento
    ADD CONSTRAINT pk_descuento PRIMARY KEY (id_descuento);


--
-- TOC entry 1935 (class 2606 OID 19071)
-- Dependencies: 174 174 2121
-- Name: pk_educacion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_educacion
    ADD CONSTRAINT pk_educacion PRIMARY KEY (id_educacion);


--
-- TOC entry 1937 (class 2606 OID 19012)
-- Dependencies: 176 176 2121
-- Name: pk_empleado; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (id_empleado);


--
-- TOC entry 1939 (class 2606 OID 18982)
-- Dependencies: 178 178 2121
-- Name: pk_evaluacion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_evaluacion
    ADD CONSTRAINT pk_evaluacion PRIMARY KEY (id_evaluacion);


--
-- TOC entry 1941 (class 2606 OID 19098)
-- Dependencies: 180 180 2121
-- Name: pk_objetivo; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_objetivo
    ADD CONSTRAINT pk_objetivo PRIMARY KEY (id_objetivo);


--
-- TOC entry 1943 (class 2606 OID 19005)
-- Dependencies: 182 182 2121
-- Name: pk_permiso; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_permiso
    ADD CONSTRAINT pk_permiso PRIMARY KEY (id_permiso);


--
-- TOC entry 1945 (class 2606 OID 18681)
-- Dependencies: 184 184 2121
-- Name: pk_planilla; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_planilla
    ADD CONSTRAINT pk_planilla PRIMARY KEY (id_planilla);


--
-- TOC entry 1947 (class 2606 OID 19120)
-- Dependencies: 186 186 2121
-- Name: pk_puesto_historico; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_puesto_historico
    ADD CONSTRAINT pk_puesto_historico PRIMARY KEY (id_historico_puesto);


--
-- TOC entry 1949 (class 2606 OID 18683)
-- Dependencies: 188 188 2121
-- Name: pk_puesto_trabajo; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_puesto_trabajo
    ADD CONSTRAINT pk_puesto_trabajo PRIMARY KEY (id_puesto_trabajo);


--
-- TOC entry 1951 (class 2606 OID 19132)
-- Dependencies: 190 190 2121
-- Name: pk_reoconocimiento; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_reconocimiento
    ADD CONSTRAINT pk_reoconocimiento PRIMARY KEY (id_reconocimiento);


--
-- TOC entry 1953 (class 2606 OID 19139)
-- Dependencies: 192 192 2121
-- Name: pk_sancion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_sancion
    ADD CONSTRAINT pk_sancion PRIMARY KEY (id_sancion);


--
-- TOC entry 1955 (class 2606 OID 19146)
-- Dependencies: 194 194 2121
-- Name: pk_tipo_bono; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_bono
    ADD CONSTRAINT pk_tipo_bono PRIMARY KEY (id_tipo_bono);


--
-- TOC entry 1957 (class 2606 OID 19153)
-- Dependencies: 196 196 2121
-- Name: pk_tipo_descuento; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_tipo_descuento
    ADD CONSTRAINT pk_tipo_descuento PRIMARY KEY (id_tipo_descuento);


--
-- TOC entry 1959 (class 2606 OID 19165)
-- Dependencies: 198 198 2121
-- Name: pk_vacacion; Type: CONSTRAINT; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

ALTER TABLE ONLY tbl_vacacion
    ADD CONSTRAINT pk_vacacion PRIMARY KEY (id_vacacion);


--
-- TOC entry 1921 (class 1259 OID 19028)
-- Dependencies: 162 2121
-- Name: fki_bono_empleado; Type: INDEX; Schema: pribantsa; Owner: pribantsa; Tablespace: 
--

CREATE INDEX fki_bono_empleado ON tbl_bono USING btree (id_empleado);


--
-- TOC entry 1960 (class 2606 OID 19172)
-- Dependencies: 176 1936 162 2121
-- Name: fk_bono_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_bono
    ADD CONSTRAINT fk_bono_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1961 (class 2606 OID 19178)
-- Dependencies: 164 1936 176 2121
-- Name: fk_capacitacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_capacitacion
    ADD CONSTRAINT fk_capacitacion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1962 (class 2606 OID 19184)
-- Dependencies: 166 176 1936 2121
-- Name: fk_contrato_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_contrato
    ADD CONSTRAINT fk_contrato_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1963 (class 2606 OID 19190)
-- Dependencies: 168 1948 188 2121
-- Name: fk_criterio_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_criterio
    ADD CONSTRAINT fk_criterio_puesto FOREIGN KEY (id_puesto) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1964 (class 2606 OID 19196)
-- Dependencies: 1936 176 170 2121
-- Name: fk_departamento_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_departamento
    ADD CONSTRAINT fk_departamento_empleado FOREIGN KEY (id_empleado_jefe) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1965 (class 2606 OID 19202)
-- Dependencies: 172 176 1936 2121
-- Name: fk_descuento_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_descuento
    ADD CONSTRAINT fk_descuento_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1966 (class 2606 OID 19207)
-- Dependencies: 172 1956 196 2121
-- Name: fk_descuento_tipo_descuento; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_descuento
    ADD CONSTRAINT fk_descuento_tipo_descuento FOREIGN KEY (id_tipo_descuento) REFERENCES tbl_tipo_descuento(id_tipo_descuento) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1967 (class 2606 OID 19213)
-- Dependencies: 176 174 1936 2121
-- Name: fk_educacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_educacion
    ADD CONSTRAINT fk_educacion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1968 (class 2606 OID 19219)
-- Dependencies: 170 1930 176 2121
-- Name: fk_empleado_departamento; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_empleado
    ADD CONSTRAINT fk_empleado_departamento FOREIGN KEY (id_departamento) REFERENCES tbl_departamento(id_departamento) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1969 (class 2606 OID 19224)
-- Dependencies: 1948 176 188 2121
-- Name: fk_empleado_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_empleado
    ADD CONSTRAINT fk_empleado_puesto FOREIGN KEY (id_puesto_trabajo) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo);


--
-- TOC entry 1970 (class 2606 OID 19230)
-- Dependencies: 1928 178 168 2121
-- Name: fk_evaluacion_criterio; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_evaluacion
    ADD CONSTRAINT fk_evaluacion_criterio FOREIGN KEY (id_criterio) REFERENCES tbl_criterio(id_criterio) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1971 (class 2606 OID 19235)
-- Dependencies: 1936 176 178 2121
-- Name: fk_evaluacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_evaluacion
    ADD CONSTRAINT fk_evaluacion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1972 (class 2606 OID 19241)
-- Dependencies: 1948 188 180 2121
-- Name: fk_objetivo_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_objetivo
    ADD CONSTRAINT fk_objetivo_puesto FOREIGN KEY (id_puesto_trabajo) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1973 (class 2606 OID 19247)
-- Dependencies: 182 1936 176 2121
-- Name: fk_permiso_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_permiso
    ADD CONSTRAINT fk_permiso_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1974 (class 2606 OID 19253)
-- Dependencies: 176 184 1936 2121
-- Name: fk_planilla_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_planilla
    ADD CONSTRAINT fk_planilla_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1975 (class 2606 OID 19259)
-- Dependencies: 1936 186 176 2121
-- Name: fk_puesto_historico_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_puesto_historico
    ADD CONSTRAINT fk_puesto_historico_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1976 (class 2606 OID 19264)
-- Dependencies: 186 1948 188 2121
-- Name: fk_puesto_historico_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_puesto_historico
    ADD CONSTRAINT fk_puesto_historico_puesto FOREIGN KEY (id_puesto) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1977 (class 2606 OID 19271)
-- Dependencies: 1936 190 176 2121
-- Name: fk_reconocimiento_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_reconocimiento
    ADD CONSTRAINT fk_reconocimiento_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1978 (class 2606 OID 19277)
-- Dependencies: 176 192 1936 2121
-- Name: fk_sancion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_sancion
    ADD CONSTRAINT fk_sancion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1979 (class 2606 OID 19283)
-- Dependencies: 188 194 1948 2121
-- Name: fk_tipo_bono_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_tipo_bono
    ADD CONSTRAINT fk_tipo_bono_puesto FOREIGN KEY (id_puesto) REFERENCES tbl_puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1980 (class 2606 OID 19290)
-- Dependencies: 1936 198 176 2121
-- Name: fk_vacacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: pribantsa
--

ALTER TABLE ONLY tbl_vacacion
    ADD CONSTRAINT fk_vacacion_empleado FOREIGN KEY (id_empleado) REFERENCES tbl_empleado(id_empleado) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2015-08-25 16:02:38

--
-- PostgreSQL database dump complete
--

