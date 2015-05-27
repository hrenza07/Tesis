--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.1
-- Dumped by pg_dump version 9.4.1
-- Started on 2015-05-23 10:34:31

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 2615 OID 17674)
-- Name: pribantsa; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pribantsa;


ALTER SCHEMA pribantsa OWNER TO postgres;

--
-- TOC entry 226 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2272 (class 0 OID 0)
-- Dependencies: 226
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = pribantsa, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 17675)
-- Name: bono; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE bono (
    "idBono" integer NOT NULL,
    fecha date NOT NULL,
    "idTipoBono" integer NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE bono OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 17678)
-- Name: bono_idBono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "bono_idBono_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "bono_idBono_seq" OWNER TO postgres;

--
-- TOC entry 2273 (class 0 OID 0)
-- Dependencies: 174
-- Name: bono_idBono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "bono_idBono_seq" OWNED BY bono."idBono";


--
-- TOC entry 175 (class 1259 OID 17680)
-- Name: capacitacion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE capacitacion (
    "idCapacitacion" integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    lugar text NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE capacitacion OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 17686)
-- Name: capacitacion_idCapacitacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "capacitacion_idCapacitacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "capacitacion_idCapacitacion_seq" OWNER TO postgres;

--
-- TOC entry 2274 (class 0 OID 0)
-- Dependencies: 176
-- Name: capacitacion_idCapacitacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "capacitacion_idCapacitacion_seq" OWNED BY capacitacion."idCapacitacion";


--
-- TOC entry 177 (class 1259 OID 17688)
-- Name: contrato; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE contrato (
    "idContrato" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idTipoContrato" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL
);


ALTER TABLE contrato OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 17691)
-- Name: contrato_idContrato_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "contrato_idContrato_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "contrato_idContrato_seq" OWNER TO postgres;

--
-- TOC entry 2275 (class 0 OID 0)
-- Dependencies: 178
-- Name: contrato_idContrato_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "contrato_idContrato_seq" OWNED BY contrato."idContrato";


--
-- TOC entry 179 (class 1259 OID 17693)
-- Name: correo; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE correo (
    "idCorreo" integer NOT NULL,
    correo text NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE correo OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 17699)
-- Name: correo_idCorreo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "correo_idCorreo_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "correo_idCorreo_seq" OWNER TO postgres;

--
-- TOC entry 2276 (class 0 OID 0)
-- Dependencies: 180
-- Name: correo_idCorreo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "correo_idCorreo_seq" OWNED BY correo."idCorreo";


--
-- TOC entry 181 (class 1259 OID 17701)
-- Name: criterio; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE criterio (
    "idCriterio" integer NOT NULL,
    descripcion text NOT NULL,
    peso integer NOT NULL,
    "idPuesto" integer NOT NULL
);


ALTER TABLE criterio OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 17707)
-- Name: criterio_idCriterio_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "criterio_idCriterio_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "criterio_idCriterio_seq" OWNER TO postgres;

--
-- TOC entry 2277 (class 0 OID 0)
-- Dependencies: 182
-- Name: criterio_idCriterio_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "criterio_idCriterio_seq" OWNED BY criterio."idCriterio";


--
-- TOC entry 183 (class 1259 OID 17709)
-- Name: departamento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE departamento (
    id_departamento integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE departamento OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 17715)
-- Name: departamento_idepartamento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE departamento_idepartamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE departamento_idepartamento_seq OWNER TO postgres;

--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 184
-- Name: departamento_idepartamento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE departamento_idepartamento_seq OWNED BY departamento.id_departamento;


--
-- TOC entry 185 (class 1259 OID 17717)
-- Name: descuento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE descuento (
    "idDescuento" integer NOT NULL,
    fecha date NOT NULL,
    "idTipoDescuento" integer NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE descuento OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 17720)
-- Name: descuento_idDescuento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "descuento_idDescuento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "descuento_idDescuento_seq" OWNER TO postgres;

--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 186
-- Name: descuento_idDescuento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "descuento_idDescuento_seq" OWNED BY descuento."idDescuento";


--
-- TOC entry 187 (class 1259 OID 17722)
-- Name: educacion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE educacion (
    "idEducacion" integer NOT NULL,
    titulo text NOT NULL,
    fecha date NOT NULL,
    "idEmpleado" integer NOT NULL,
    lugar text,
    institucion text,
    idx text,
    nivel text
);


ALTER TABLE educacion OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 17728)
-- Name: educacion_educacion_seqid; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE educacion_educacion_seqid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE educacion_educacion_seqid OWNER TO postgres;

--
-- TOC entry 2282 (class 0 OID 0)
-- Dependencies: 188
-- Name: educacion_educacion_seqid; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE educacion_educacion_seqid OWNED BY educacion."idEducacion";


--
-- TOC entry 189 (class 1259 OID 17730)
-- Name: empleado; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE empleado (
    empleado_id integer NOT NULL,
    dui text NOT NULL,
    isss text NOT NULL,
    afp text NOT NULL,
    sexo text,
    id_departamento integer NOT NULL,
    nit text NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    cuenta text NOT NULL,
    salario double precision NOT NULL,
    "id_PuestoTrabajo" integer NOT NULL,
    edad integer,
    estado_civil text,
    id_manager integer
);


ALTER TABLE empleado OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 17736)
-- Name: empleado_empleado_idseq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE empleado_empleado_idseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE empleado_empleado_idseq OWNER TO postgres;

--
-- TOC entry 2285 (class 0 OID 0)
-- Dependencies: 190
-- Name: empleado_empleado_idseq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE empleado_empleado_idseq OWNED BY empleado.empleado_id;


--
-- TOC entry 223 (class 1259 OID 18110)
-- Name: empleado_id_manager_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE empleado_id_manager_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE empleado_id_manager_seq OWNER TO postgres;

--
-- TOC entry 2287 (class 0 OID 0)
-- Dependencies: 223
-- Name: empleado_id_manager_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE empleado_id_manager_seq OWNED BY empleado.id_manager;


--
-- TOC entry 191 (class 1259 OID 17738)
-- Name: evaluacion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE evaluacion (
    "idEvaluacion" integer NOT NULL,
    puntaje double precision NOT NULL,
    fecha date NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idCriterio" integer NOT NULL
);


ALTER TABLE evaluacion OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 17741)
-- Name: evaluacion_idEvaluacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "evaluacion_idEvaluacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "evaluacion_idEvaluacion_seq" OWNER TO postgres;

--
-- TOC entry 2288 (class 0 OID 0)
-- Dependencies: 192
-- Name: evaluacion_idEvaluacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "evaluacion_idEvaluacion_seq" OWNED BY evaluacion."idEvaluacion";


--
-- TOC entry 222 (class 1259 OID 18085)
-- Name: exp_laboral; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE exp_laboral (
    lugar text,
    tiempo integer,
    cargo text,
    id_explaboral bigint NOT NULL,
    "idEmpleado" integer,
    idx integer
);


ALTER TABLE exp_laboral OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 18083)
-- Name: exp_laboral_id_explaboral_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE exp_laboral_id_explaboral_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE exp_laboral_id_explaboral_seq OWNER TO postgres;

--
-- TOC entry 2289 (class 0 OID 0)
-- Dependencies: 221
-- Name: exp_laboral_id_explaboral_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE exp_laboral_id_explaboral_seq OWNED BY exp_laboral.id_explaboral;


--
-- TOC entry 224 (class 1259 OID 18134)
-- Name: objdepartamento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE objdepartamento (
    tipo text,
    descripcion text,
    id_objetivodep bigint NOT NULL,
    id_departamento integer,
    idx integer
);


ALTER TABLE objdepartamento OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 18140)
-- Name: obj_departamento_id_objetivodep_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE obj_departamento_id_objetivodep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE obj_departamento_id_objetivodep_seq OWNER TO postgres;

--
-- TOC entry 2292 (class 0 OID 0)
-- Dependencies: 225
-- Name: obj_departamento_id_objetivodep_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE obj_departamento_id_objetivodep_seq OWNED BY objdepartamento.id_objetivodep;


--
-- TOC entry 193 (class 1259 OID 17743)
-- Name: objetivo; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE objetivo (
    "idObjetivo" integer NOT NULL,
    descripcion text NOT NULL,
    alcance boolean NOT NULL,
    "idPuestoTrabajo" integer NOT NULL
);


ALTER TABLE objetivo OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 17749)
-- Name: objetivo_idObjetivo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "objetivo_idObjetivo_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "objetivo_idObjetivo_seq" OWNER TO postgres;

--
-- TOC entry 2294 (class 0 OID 0)
-- Dependencies: 194
-- Name: objetivo_idObjetivo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "objetivo_idObjetivo_seq" OWNED BY objetivo."idObjetivo";


--
-- TOC entry 195 (class 1259 OID 17751)
-- Name: permiso; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE permiso (
    "idPermiso" integer NOT NULL,
    remunerado boolean NOT NULL,
    inicio timestamp without time zone NOT NULL,
    fin timestamp without time zone NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idTipoPermiso" integer NOT NULL
);


ALTER TABLE permiso OWNER TO postgres;

--
-- TOC entry 2295 (class 0 OID 0)
-- Dependencies: 195
-- Name: COLUMN permiso.remunerado; Type: COMMENT; Schema: pribantsa; Owner: postgres
--

COMMENT ON COLUMN permiso.remunerado IS 'Si el permiso es remunerado se marcará este campo como "verdadero", en caso no sea remunerado se marcará como "falso".';


--
-- TOC entry 196 (class 1259 OID 17754)
-- Name: permiso_idPermiso_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "permiso_idPermiso_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "permiso_idPermiso_seq" OWNER TO postgres;

--
-- TOC entry 2296 (class 0 OID 0)
-- Dependencies: 196
-- Name: permiso_idPermiso_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "permiso_idPermiso_seq" OWNED BY permiso."idPermiso";


--
-- TOC entry 197 (class 1259 OID 17756)
-- Name: planilla; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE planilla (
    "idPlanilla" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE planilla OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17759)
-- Name: planilla_idPlanilla_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "planilla_idPlanilla_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "planilla_idPlanilla_seq" OWNER TO postgres;

--
-- TOC entry 2297 (class 0 OID 0)
-- Dependencies: 198
-- Name: planilla_idPlanilla_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "planilla_idPlanilla_seq" OWNED BY planilla."idPlanilla";


--
-- TOC entry 199 (class 1259 OID 17761)
-- Name: puesto_historico; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE puesto_historico (
    "idHistoricoPuesto" integer NOT NULL,
    "idPuesto" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date
);


ALTER TABLE puesto_historico OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17764)
-- Name: puesto_historico_idHistoricoPuesto_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "puesto_historico_idHistoricoPuesto_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "puesto_historico_idHistoricoPuesto_seq" OWNER TO postgres;

--
-- TOC entry 2298 (class 0 OID 0)
-- Dependencies: 200
-- Name: puesto_historico_idHistoricoPuesto_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "puesto_historico_idHistoricoPuesto_seq" OWNED BY puesto_historico."idHistoricoPuesto";


--
-- TOC entry 201 (class 1259 OID 17766)
-- Name: puesto_trabajo; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE puesto_trabajo (
    "idPuestoTrabajo" integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    salario_max double precision NOT NULL,
    salario_min double precision NOT NULL
);


ALTER TABLE puesto_trabajo OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17772)
-- Name: puesto_trabajo_idpuestotrabajo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE puesto_trabajo_idpuestotrabajo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE puesto_trabajo_idpuestotrabajo_seq OWNER TO postgres;

--
-- TOC entry 2299 (class 0 OID 0)
-- Dependencies: 202
-- Name: puesto_trabajo_idpuestotrabajo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE puesto_trabajo_idpuestotrabajo_seq OWNED BY puesto_trabajo."idPuestoTrabajo";


--
-- TOC entry 203 (class 1259 OID 17774)
-- Name: reconocimiento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE reconocimiento (
    "idReconocimiento" integer NOT NULL,
    descripcion text NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE reconocimiento OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17780)
-- Name: reconocimiento_idReconocimiento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "reconocimiento_idReconocimiento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "reconocimiento_idReconocimiento_seq" OWNER TO postgres;

--
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 204
-- Name: reconocimiento_idReconocimiento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "reconocimiento_idReconocimiento_seq" OWNED BY reconocimiento."idReconocimiento";


--
-- TOC entry 205 (class 1259 OID 17782)
-- Name: sancion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE sancion (
    "idSancion" integer NOT NULL,
    gravedad integer NOT NULL,
    descripcion text NOT NULL,
    fecha date NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE sancion OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17788)
-- Name: sancion_idSancion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "sancion_idSancion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "sancion_idSancion_seq" OWNER TO postgres;

--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 206
-- Name: sancion_idSancion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "sancion_idSancion_seq" OWNED BY sancion."idSancion";


--
-- TOC entry 207 (class 1259 OID 17790)
-- Name: telefono; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE telefono (
    "idTelefono" integer NOT NULL,
    telefono text NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE telefono OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17796)
-- Name: telefono_idTelefono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "telefono_idTelefono_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "telefono_idTelefono_seq" OWNER TO postgres;

--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 208
-- Name: telefono_idTelefono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "telefono_idTelefono_seq" OWNED BY telefono."idTelefono";


--
-- TOC entry 209 (class 1259 OID 17798)
-- Name: tipo_bono; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_bono (
    "idTipoBono" integer NOT NULL,
    "idPuesto" integer NOT NULL,
    porcentaje double precision NOT NULL
);


ALTER TABLE tipo_bono OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 17801)
-- Name: tipo_bono_idTipoBono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "tipo_bono_idTipoBono_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "tipo_bono_idTipoBono_seq" OWNER TO postgres;

--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 210
-- Name: tipo_bono_idTipoBono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "tipo_bono_idTipoBono_seq" OWNED BY tipo_bono."idTipoBono";


--
-- TOC entry 211 (class 1259 OID 17803)
-- Name: tipo_contrato; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_contrato (
    "idTipoContrato" integer NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE tipo_contrato OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 17809)
-- Name: tipo_contrato_idTipoContrato_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "tipo_contrato_idTipoContrato_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "tipo_contrato_idTipoContrato_seq" OWNER TO postgres;

--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 212
-- Name: tipo_contrato_idTipoContrato_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "tipo_contrato_idTipoContrato_seq" OWNED BY tipo_contrato."idTipoContrato";


--
-- TOC entry 213 (class 1259 OID 17811)
-- Name: tipo_descuento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_descuento (
    "idTipoDescuento" integer NOT NULL,
    descripcion text NOT NULL,
    porcentaje double precision NOT NULL
);


ALTER TABLE tipo_descuento OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17817)
-- Name: tipo_descuento_idTipoDescuento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "tipo_descuento_idTipoDescuento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "tipo_descuento_idTipoDescuento_seq" OWNER TO postgres;

--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 214
-- Name: tipo_descuento_idTipoDescuento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "tipo_descuento_idTipoDescuento_seq" OWNED BY tipo_descuento."idTipoDescuento";


--
-- TOC entry 215 (class 1259 OID 17819)
-- Name: tipo_permiso; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_permiso (
    "idTipoPermiso" integer NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE tipo_permiso OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17825)
-- Name: tipo_permiso_idTipoPermiso_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "tipo_permiso_idTipoPermiso_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "tipo_permiso_idTipoPermiso_seq" OWNER TO postgres;

--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 216
-- Name: tipo_permiso_idTipoPermiso_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "tipo_permiso_idTipoPermiso_seq" OWNED BY tipo_permiso."idTipoPermiso";


--
-- TOC entry 217 (class 1259 OID 17827)
-- Name: transaccion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE transaccion (
    "idTransaccion" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    credito_debito boolean NOT NULL,
    monto double precision NOT NULL,
    fecha timestamp without time zone NOT NULL
);


ALTER TABLE transaccion OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17830)
-- Name: transaccion_idTransaccion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "transaccion_idTransaccion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "transaccion_idTransaccion_seq" OWNER TO postgres;

--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 218
-- Name: transaccion_idTransaccion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "transaccion_idTransaccion_seq" OWNED BY transaccion."idTransaccion";


--
-- TOC entry 219 (class 1259 OID 17832)
-- Name: vacacion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE vacacion (
    "idVacacion" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE vacacion OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17835)
-- Name: vacacion_idVacacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "vacacion_idVacacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "vacacion_idVacacion_seq" OWNER TO postgres;

--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 220
-- Name: vacacion_idVacacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "vacacion_idVacacion_seq" OWNED BY vacacion."idVacacion";


--
-- TOC entry 2050 (class 2604 OID 18059)
-- Name: idBono; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY bono ALTER COLUMN "idBono" SET DEFAULT nextval('"bono_idBono_seq"'::regclass);


--
-- TOC entry 2051 (class 2604 OID 18060)
-- Name: idCapacitacion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY capacitacion ALTER COLUMN "idCapacitacion" SET DEFAULT nextval('"capacitacion_idCapacitacion_seq"'::regclass);


--
-- TOC entry 2052 (class 2604 OID 18061)
-- Name: idContrato; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY contrato ALTER COLUMN "idContrato" SET DEFAULT nextval('"contrato_idContrato_seq"'::regclass);


--
-- TOC entry 2053 (class 2604 OID 18062)
-- Name: idCorreo; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY correo ALTER COLUMN "idCorreo" SET DEFAULT nextval('"correo_idCorreo_seq"'::regclass);


--
-- TOC entry 2054 (class 2604 OID 18063)
-- Name: idCriterio; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY criterio ALTER COLUMN "idCriterio" SET DEFAULT nextval('"criterio_idCriterio_seq"'::regclass);


--
-- TOC entry 2055 (class 2604 OID 18064)
-- Name: id_departamento; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY departamento ALTER COLUMN id_departamento SET DEFAULT nextval('departamento_idepartamento_seq'::regclass);


--
-- TOC entry 2056 (class 2604 OID 18065)
-- Name: idDescuento; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY descuento ALTER COLUMN "idDescuento" SET DEFAULT nextval('"descuento_idDescuento_seq"'::regclass);


--
-- TOC entry 2057 (class 2604 OID 18066)
-- Name: idEducacion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY educacion ALTER COLUMN "idEducacion" SET DEFAULT nextval('educacion_educacion_seqid'::regclass);


--
-- TOC entry 2059 (class 2604 OID 18067)
-- Name: empleado_id; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY empleado ALTER COLUMN empleado_id SET DEFAULT nextval('empleado_empleado_idseq'::regclass);


--
-- TOC entry 2058 (class 2604 OID 18120)
-- Name: id_manager; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY empleado ALTER COLUMN id_manager SET DEFAULT nextval('empleado_id_manager_seq'::regclass);


--
-- TOC entry 2060 (class 2604 OID 18068)
-- Name: idEvaluacion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY evaluacion ALTER COLUMN "idEvaluacion" SET DEFAULT nextval('"evaluacion_idEvaluacion_seq"'::regclass);


--
-- TOC entry 2075 (class 2604 OID 18088)
-- Name: id_explaboral; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY exp_laboral ALTER COLUMN id_explaboral SET DEFAULT nextval('exp_laboral_id_explaboral_seq'::regclass);


--
-- TOC entry 2076 (class 2604 OID 18142)
-- Name: id_objetivodep; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY objdepartamento ALTER COLUMN id_objetivodep SET DEFAULT nextval('obj_departamento_id_objetivodep_seq'::regclass);


--
-- TOC entry 2061 (class 2604 OID 18069)
-- Name: idObjetivo; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY objetivo ALTER COLUMN "idObjetivo" SET DEFAULT nextval('"objetivo_idObjetivo_seq"'::regclass);


--
-- TOC entry 2062 (class 2604 OID 18070)
-- Name: idPermiso; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY permiso ALTER COLUMN "idPermiso" SET DEFAULT nextval('"permiso_idPermiso_seq"'::regclass);


--
-- TOC entry 2063 (class 2604 OID 18071)
-- Name: idPlanilla; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY planilla ALTER COLUMN "idPlanilla" SET DEFAULT nextval('"planilla_idPlanilla_seq"'::regclass);


--
-- TOC entry 2064 (class 2604 OID 18072)
-- Name: idHistoricoPuesto; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY puesto_historico ALTER COLUMN "idHistoricoPuesto" SET DEFAULT nextval('"puesto_historico_idHistoricoPuesto_seq"'::regclass);


--
-- TOC entry 2065 (class 2604 OID 18073)
-- Name: idPuestoTrabajo; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY puesto_trabajo ALTER COLUMN "idPuestoTrabajo" SET DEFAULT nextval('puesto_trabajo_idpuestotrabajo_seq'::regclass);


--
-- TOC entry 2066 (class 2604 OID 18074)
-- Name: idReconocimiento; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY reconocimiento ALTER COLUMN "idReconocimiento" SET DEFAULT nextval('"reconocimiento_idReconocimiento_seq"'::regclass);


--
-- TOC entry 2067 (class 2604 OID 18075)
-- Name: idSancion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY sancion ALTER COLUMN "idSancion" SET DEFAULT nextval('"sancion_idSancion_seq"'::regclass);


--
-- TOC entry 2068 (class 2604 OID 18076)
-- Name: idTelefono; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY telefono ALTER COLUMN "idTelefono" SET DEFAULT nextval('"telefono_idTelefono_seq"'::regclass);


--
-- TOC entry 2069 (class 2604 OID 18077)
-- Name: idTipoBono; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_bono ALTER COLUMN "idTipoBono" SET DEFAULT nextval('"tipo_bono_idTipoBono_seq"'::regclass);


--
-- TOC entry 2070 (class 2604 OID 18078)
-- Name: idTipoContrato; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_contrato ALTER COLUMN "idTipoContrato" SET DEFAULT nextval('"tipo_contrato_idTipoContrato_seq"'::regclass);


--
-- TOC entry 2071 (class 2604 OID 18079)
-- Name: idTipoDescuento; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_descuento ALTER COLUMN "idTipoDescuento" SET DEFAULT nextval('"tipo_descuento_idTipoDescuento_seq"'::regclass);


--
-- TOC entry 2072 (class 2604 OID 18080)
-- Name: idTipoPermiso; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_permiso ALTER COLUMN "idTipoPermiso" SET DEFAULT nextval('"tipo_permiso_idTipoPermiso_seq"'::regclass);


--
-- TOC entry 2073 (class 2604 OID 18081)
-- Name: idTransaccion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY transaccion ALTER COLUMN "idTransaccion" SET DEFAULT nextval('"transaccion_idTransaccion_seq"'::regclass);


--
-- TOC entry 2074 (class 2604 OID 18082)
-- Name: idVacacion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY vacacion ALTER COLUMN "idVacacion" SET DEFAULT nextval('"vacacion_idVacacion_seq"'::regclass);


--
-- TOC entry 2078 (class 2606 OID 17862)
-- Name: pk_bono; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bono
    ADD CONSTRAINT pk_bono PRIMARY KEY ("idBono");


--
-- TOC entry 2080 (class 2606 OID 17864)
-- Name: pk_capacitacion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY capacitacion
    ADD CONSTRAINT pk_capacitacion PRIMARY KEY ("idCapacitacion");


--
-- TOC entry 2082 (class 2606 OID 17866)
-- Name: pk_contrato; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contrato
    ADD CONSTRAINT pk_contrato PRIMARY KEY ("idContrato");


--
-- TOC entry 2084 (class 2606 OID 17868)
-- Name: pk_correo; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY correo
    ADD CONSTRAINT pk_correo PRIMARY KEY ("idCorreo");


--
-- TOC entry 2086 (class 2606 OID 17870)
-- Name: pk_criterio; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY criterio
    ADD CONSTRAINT pk_criterio PRIMARY KEY ("idCriterio");


--
-- TOC entry 2088 (class 2606 OID 17872)
-- Name: pk_departamento; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (id_departamento);


--
-- TOC entry 2090 (class 2606 OID 17874)
-- Name: pk_descuento; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT pk_descuento PRIMARY KEY ("idDescuento");


--
-- TOC entry 2092 (class 2606 OID 17876)
-- Name: pk_educacion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY educacion
    ADD CONSTRAINT pk_educacion PRIMARY KEY ("idEducacion");


--
-- TOC entry 2094 (class 2606 OID 17878)
-- Name: pk_empleado; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (empleado_id);


--
-- TOC entry 2096 (class 2606 OID 17880)
-- Name: pk_evaluacion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evaluacion
    ADD CONSTRAINT pk_evaluacion PRIMARY KEY ("idEvaluacion");


--
-- TOC entry 2126 (class 2606 OID 18093)
-- Name: pk_experiencialaboral; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exp_laboral
    ADD CONSTRAINT pk_experiencialaboral PRIMARY KEY (id_explaboral);


--
-- TOC entry 2104 (class 2606 OID 17882)
-- Name: pk_historico_puesto; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY puesto_historico
    ADD CONSTRAINT pk_historico_puesto PRIMARY KEY ("idHistoricoPuesto");


--
-- TOC entry 2128 (class 2606 OID 18150)
-- Name: pk_objedeparment; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY objdepartamento
    ADD CONSTRAINT pk_objedeparment PRIMARY KEY (id_objetivodep);


--
-- TOC entry 2098 (class 2606 OID 17884)
-- Name: pk_objetivo; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY objetivo
    ADD CONSTRAINT pk_objetivo PRIMARY KEY ("idObjetivo");


--
-- TOC entry 2100 (class 2606 OID 17886)
-- Name: pk_permiso; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY permiso
    ADD CONSTRAINT pk_permiso PRIMARY KEY ("idPermiso");


--
-- TOC entry 2102 (class 2606 OID 17888)
-- Name: pk_planilla; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY planilla
    ADD CONSTRAINT pk_planilla PRIMARY KEY ("idPlanilla");


--
-- TOC entry 2106 (class 2606 OID 17890)
-- Name: pk_puesto_trabajo; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY puesto_trabajo
    ADD CONSTRAINT pk_puesto_trabajo PRIMARY KEY ("idPuestoTrabajo");


--
-- TOC entry 2108 (class 2606 OID 17892)
-- Name: pk_reconocimiento; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY reconocimiento
    ADD CONSTRAINT pk_reconocimiento PRIMARY KEY ("idReconocimiento");


--
-- TOC entry 2110 (class 2606 OID 17894)
-- Name: pk_sancion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sancion
    ADD CONSTRAINT pk_sancion PRIMARY KEY ("idSancion");


--
-- TOC entry 2112 (class 2606 OID 17896)
-- Name: pk_telefono; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY telefono
    ADD CONSTRAINT pk_telefono PRIMARY KEY ("idTelefono");


--
-- TOC entry 2114 (class 2606 OID 17898)
-- Name: pk_tipo_bono; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_bono
    ADD CONSTRAINT pk_tipo_bono PRIMARY KEY ("idTipoBono");


--
-- TOC entry 2116 (class 2606 OID 17900)
-- Name: pk_tipo_contrato; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_contrato
    ADD CONSTRAINT pk_tipo_contrato PRIMARY KEY ("idTipoContrato");


--
-- TOC entry 2120 (class 2606 OID 17902)
-- Name: pk_tipo_permiso; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_permiso
    ADD CONSTRAINT pk_tipo_permiso PRIMARY KEY ("idTipoPermiso");


--
-- TOC entry 2122 (class 2606 OID 17904)
-- Name: pk_transaccion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY transaccion
    ADD CONSTRAINT pk_transaccion PRIMARY KEY ("idTransaccion");


--
-- TOC entry 2124 (class 2606 OID 17906)
-- Name: pk_vacacion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vacacion
    ADD CONSTRAINT pk_vacacion PRIMARY KEY ("idVacacion");


--
-- TOC entry 2118 (class 2606 OID 17908)
-- Name: tipo_descuento_pkey; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_descuento
    ADD CONSTRAINT tipo_descuento_pkey PRIMARY KEY ("idTipoDescuento");


--
-- TOC entry 2129 (class 2606 OID 17909)
-- Name: fk_bono_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY bono
    ADD CONSTRAINT fk_bono_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2130 (class 2606 OID 17914)
-- Name: fk_capacitacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY capacitacion
    ADD CONSTRAINT fk_capacitacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2131 (class 2606 OID 17919)
-- Name: fk_contrato_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY contrato
    ADD CONSTRAINT fk_contrato_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2133 (class 2606 OID 17924)
-- Name: fk_correo_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY correo
    ADD CONSTRAINT fk_correo_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id);


--
-- TOC entry 2134 (class 2606 OID 17929)
-- Name: fk_criterio_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY criterio
    ADD CONSTRAINT fk_criterio_puesto FOREIGN KEY ("idPuesto") REFERENCES puesto_trabajo("idPuestoTrabajo") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2135 (class 2606 OID 17939)
-- Name: fk_descuento_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT fk_descuento_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2136 (class 2606 OID 17944)
-- Name: fk_descuento_tipo; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT fk_descuento_tipo FOREIGN KEY ("idTipoDescuento") REFERENCES tipo_descuento("idTipoDescuento") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2137 (class 2606 OID 17949)
-- Name: fk_educacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY educacion
    ADD CONSTRAINT fk_educacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2138 (class 2606 OID 17954)
-- Name: fk_empleado_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_empleado_puesto FOREIGN KEY ("id_PuestoTrabajo") REFERENCES puesto_trabajo("idPuestoTrabajo");


--
-- TOC entry 2139 (class 2606 OID 17959)
-- Name: fk_evaluacion_criterio; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY evaluacion
    ADD CONSTRAINT fk_evaluacion_criterio FOREIGN KEY ("idCriterio") REFERENCES criterio("idCriterio") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2140 (class 2606 OID 17964)
-- Name: fk_evaluacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY evaluacion
    ADD CONSTRAINT fk_evaluacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2153 (class 2606 OID 18094)
-- Name: fk_exp_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY exp_laboral
    ADD CONSTRAINT fk_exp_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2145 (class 2606 OID 17969)
-- Name: fk_historico_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY puesto_historico
    ADD CONSTRAINT fk_historico_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2146 (class 2606 OID 17974)
-- Name: fk_historico_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY puesto_historico
    ADD CONSTRAINT fk_historico_puesto FOREIGN KEY ("idPuesto") REFERENCES puesto_trabajo("idPuestoTrabajo") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2154 (class 2606 OID 18151)
-- Name: fk_objetivo_departamento; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY objdepartamento
    ADD CONSTRAINT fk_objetivo_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento);


--
-- TOC entry 2141 (class 2606 OID 17979)
-- Name: fk_objetivo_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY objetivo
    ADD CONSTRAINT fk_objetivo_puesto FOREIGN KEY ("idPuestoTrabajo") REFERENCES puesto_trabajo("idPuestoTrabajo") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2142 (class 2606 OID 17984)
-- Name: fk_permiso_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY permiso
    ADD CONSTRAINT fk_permiso_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2143 (class 2606 OID 17989)
-- Name: fk_permiso_tipoP; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY permiso
    ADD CONSTRAINT "fk_permiso_tipoP" FOREIGN KEY ("idTipoPermiso") REFERENCES tipo_permiso("idTipoPermiso") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2144 (class 2606 OID 17994)
-- Name: fk_planilla_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY planilla
    ADD CONSTRAINT fk_planilla_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2147 (class 2606 OID 17999)
-- Name: fk_reconocimiento_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY reconocimiento
    ADD CONSTRAINT fk_reconocimiento_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2148 (class 2606 OID 18004)
-- Name: fk_sancion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY sancion
    ADD CONSTRAINT fk_sancion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2149 (class 2606 OID 18009)
-- Name: fk_telefono_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY telefono
    ADD CONSTRAINT fk_telefono_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2132 (class 2606 OID 18014)
-- Name: fk_tipoContrato_contrato; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY contrato
    ADD CONSTRAINT "fk_tipoContrato_contrato" FOREIGN KEY ("idTipoContrato") REFERENCES tipo_contrato("idTipoContrato") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2150 (class 2606 OID 18019)
-- Name: fk_tipo_bono_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_bono
    ADD CONSTRAINT fk_tipo_bono_puesto FOREIGN KEY ("idPuesto") REFERENCES puesto_trabajo("idPuestoTrabajo") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2151 (class 2606 OID 18024)
-- Name: fk_transaccion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY transaccion
    ADD CONSTRAINT fk_transaccion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2152 (class 2606 OID 18029)
-- Name: fk_vacacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY vacacion
    ADD CONSTRAINT fk_vacacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2269 (class 0 OID 0)
-- Dependencies: 7
-- Name: pribantsa; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA pribantsa FROM PUBLIC;
REVOKE ALL ON SCHEMA pribantsa FROM postgres;
GRANT ALL ON SCHEMA pribantsa TO postgres;
GRANT ALL ON SCHEMA pribantsa TO PUBLIC;


--
-- TOC entry 2271 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 2278 (class 0 OID 0)
-- Dependencies: 183
-- Name: departamento; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE departamento FROM PUBLIC;
REVOKE ALL ON TABLE departamento FROM postgres;
GRANT ALL ON TABLE departamento TO postgres;
GRANT ALL ON TABLE departamento TO henry;


--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 184
-- Name: departamento_idepartamento_seq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE departamento_idepartamento_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE departamento_idepartamento_seq FROM postgres;
GRANT ALL ON SEQUENCE departamento_idepartamento_seq TO postgres;
GRANT USAGE ON SEQUENCE departamento_idepartamento_seq TO henry;


--
-- TOC entry 2283 (class 0 OID 0)
-- Dependencies: 188
-- Name: educacion_educacion_seqid; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE educacion_educacion_seqid FROM PUBLIC;
REVOKE ALL ON SEQUENCE educacion_educacion_seqid FROM postgres;
GRANT ALL ON SEQUENCE educacion_educacion_seqid TO postgres;
GRANT USAGE ON SEQUENCE educacion_educacion_seqid TO henry;


--
-- TOC entry 2284 (class 0 OID 0)
-- Dependencies: 189
-- Name: empleado; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE empleado FROM PUBLIC;
REVOKE ALL ON TABLE empleado FROM postgres;
GRANT ALL ON TABLE empleado TO postgres;
GRANT INSERT ON TABLE empleado TO henry;


--
-- TOC entry 2286 (class 0 OID 0)
-- Dependencies: 190
-- Name: empleado_empleado_idseq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE empleado_empleado_idseq FROM PUBLIC;
REVOKE ALL ON SEQUENCE empleado_empleado_idseq FROM postgres;
GRANT ALL ON SEQUENCE empleado_empleado_idseq TO postgres;
GRANT USAGE ON SEQUENCE empleado_empleado_idseq TO henry;


--
-- TOC entry 2290 (class 0 OID 0)
-- Dependencies: 221
-- Name: exp_laboral_id_explaboral_seq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE exp_laboral_id_explaboral_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE exp_laboral_id_explaboral_seq FROM postgres;
GRANT ALL ON SEQUENCE exp_laboral_id_explaboral_seq TO postgres;
GRANT USAGE ON SEQUENCE exp_laboral_id_explaboral_seq TO henry;


--
-- TOC entry 2291 (class 0 OID 0)
-- Dependencies: 224
-- Name: objdepartamento; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE objdepartamento FROM PUBLIC;
REVOKE ALL ON TABLE objdepartamento FROM postgres;
GRANT ALL ON TABLE objdepartamento TO postgres;
GRANT ALL ON TABLE objdepartamento TO henry;


--
-- TOC entry 2293 (class 0 OID 0)
-- Dependencies: 225
-- Name: obj_departamento_id_objetivodep_seq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE obj_departamento_id_objetivodep_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE obj_departamento_id_objetivodep_seq FROM postgres;
GRANT ALL ON SEQUENCE obj_departamento_id_objetivodep_seq TO postgres;
GRANT USAGE ON SEQUENCE obj_departamento_id_objetivodep_seq TO henry;


-- Completed on 2015-05-23 10:34:31

--
-- PostgreSQL database dump complete
--

