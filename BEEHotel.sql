/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     26/9/2021 21:31:55                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HAB_HOSP') and o.name = 'FK_HAB_HOSP_HAB_HOSP_HOSPEDAJ')
alter table HAB_HOSP
   drop constraint FK_HAB_HOSP_HAB_HOSP_HOSPEDAJ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HAB_HOSP') and o.name = 'FK_HAB_HOSP_HAB_HOSP2_HABITACI')
alter table HAB_HOSP
   drop constraint FK_HAB_HOSP_HAB_HOSP2_HABITACI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HAB_PER') and o.name = 'FK_HAB_PER_HAB_PER_PERSONAL')
alter table HAB_PER
   drop constraint FK_HAB_PER_HAB_PER_PERSONAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HAB_PER') and o.name = 'FK_HAB_PER_HAB_PER2_HABITACI')
alter table HAB_PER
   drop constraint FK_HAB_PER_HAB_PER2_HABITACI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HAB_RESER') and o.name = 'FK_HAB_RESE_HAB_RESER_RESERVAS')
alter table HAB_RESER
   drop constraint FK_HAB_RESE_HAB_RESER_RESERVAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HAB_RESER') and o.name = 'FK_HAB_RESE_HAB_RESER_HABITACI')
alter table HAB_RESER
   drop constraint FK_HAB_RESE_HAB_RESER_HABITACI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOSPEDAJE') and o.name = 'FK_HOSPEDAJ_CLI_HOSP_CLIENTES')
alter table HOSPEDAJE
   drop constraint FK_HOSPEDAJ_CLI_HOSP_CLIENTES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESERVAS') and o.name = 'FK_RESERVAS_CLI_RESER_CLIENTES')
alter table RESERVAS
   drop constraint FK_RESERVAS_CLI_RESER_CLIENTES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESER_HOSP') and o.name = 'FK_RESER_HO_RESER_HOS_HOSPEDAJ')
alter table RESER_HOSP
   drop constraint FK_RESER_HO_RESER_HOS_HOSPEDAJ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESER_HOSP') and o.name = 'FK_RESER_HO_RESER_HOS_RESERVAS')
alter table RESER_HOSP
   drop constraint FK_RESER_HO_RESER_HOS_RESERVAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTES')
            and   type = 'U')
   drop table CLIENTES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HABITACIONES')
            and   type = 'U')
   drop table HABITACIONES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HAB_HOSP')
            and   name  = 'HAB_HOSP_FK'
            and   indid > 0
            and   indid < 255)
   drop index HAB_HOSP.HAB_HOSP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HAB_HOSP')
            and   name  = 'HAB_HOSP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HAB_HOSP.HAB_HOSP2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HAB_HOSP')
            and   type = 'U')
   drop table HAB_HOSP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HAB_PER')
            and   name  = 'HAB_PER_FK'
            and   indid > 0
            and   indid < 255)
   drop index HAB_PER.HAB_PER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HAB_PER')
            and   name  = 'HAB_PER2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HAB_PER.HAB_PER2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HAB_PER')
            and   type = 'U')
   drop table HAB_PER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HAB_RESER')
            and   name  = 'HAB_RESER_FK'
            and   indid > 0
            and   indid < 255)
   drop index HAB_RESER.HAB_RESER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HAB_RESER')
            and   name  = 'HAB_RESER2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HAB_RESER.HAB_RESER2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HAB_RESER')
            and   type = 'U')
   drop table HAB_RESER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOSPEDAJE')
            and   name  = 'CLI_HOSP_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOSPEDAJE.CLI_HOSP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOSPEDAJE')
            and   type = 'U')
   drop table HOSPEDAJE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERSONAL')
            and   type = 'U')
   drop table PERSONAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESERVAS')
            and   name  = 'CLI_RESER_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESERVAS.CLI_RESER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESERVAS')
            and   type = 'U')
   drop table RESERVAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESER_HOSP')
            and   name  = 'RESER_HOSP_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESER_HOSP.RESER_HOSP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESER_HOSP')
            and   name  = 'RESER_HOSP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESER_HOSP.RESER_HOSP2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESER_HOSP')
            and   type = 'U')
   drop table RESER_HOSP
go

/*==============================================================*/
/* Table: CLIENTES                                              */
/*==============================================================*/
create table CLIENTES (
   CLI_ID               numeric(12)          identity,
   CLI_CEDULA           varchar(10)          not null,
   CLI_NOMBRE           varchar(40)          not null,
   CLI_APELLIDO         varchar(40)          not null,
   CLI_CELULAR          varchar(12)          not null,
   CLI_CORREO           varchar(60)          not null,
   CLI_DIRECCION        varchar(100)         not null,
   constraint PK_CLIENTES primary key (CLI_ID)
)
go

/*==============================================================*/
/* Table: HABITACIONES                                          */
/*==============================================================*/
create table HABITACIONES (
   HAB_ID               numeric(12)          identity,
   HAB_NUM              int                  not null,
   HAB_CAPACIDAD        int                  not null,
   HAB_CAMAS            int                  not null,
   HAB_ESTADO           varchar(10)          not null,
   constraint PK_HABITACIONES primary key (HAB_ID)
)
go

/*==============================================================*/
/* Table: HAB_HOSP                                              */
/*==============================================================*/
create table HAB_HOSP (
   HOSP_ID              int                  not null,
   HAB_ID               int                  not null,
   constraint PK_HAB_HOSP primary key (HOSP_ID, HAB_ID)
)
go

/*==============================================================*/
/* Index: HAB_HOSP2_FK                                          */
/*==============================================================*/




create nonclustered index HAB_HOSP2_FK on HAB_HOSP (HAB_ID ASC)
go

/*==============================================================*/
/* Index: HAB_HOSP_FK                                           */
/*==============================================================*/




create nonclustered index HAB_HOSP_FK on HAB_HOSP (HOSP_ID ASC)
go

/*==============================================================*/
/* Table: HAB_PER                                               */
/*==============================================================*/
create table HAB_PER (
   PER_ID               int                  not null,
   HAB_ID               int                  not null,
   constraint PK_HAB_PER primary key (PER_ID, HAB_ID)
)
go

/*==============================================================*/
/* Index: HAB_PER2_FK                                           */
/*==============================================================*/




create nonclustered index HAB_PER2_FK on HAB_PER (HAB_ID ASC)
go

/*==============================================================*/
/* Index: HAB_PER_FK                                            */
/*==============================================================*/




create nonclustered index HAB_PER_FK on HAB_PER (PER_ID ASC)
go

/*==============================================================*/
/* Table: HAB_RESER                                             */
/*==============================================================*/
create table HAB_RESER (
   RESER_ID             int                  not null,
   HAB_ID               int                  not null,
   constraint PK_HAB_RESER primary key (RESER_ID, HAB_ID)
)
go

/*==============================================================*/
/* Index: HAB_RESER2_FK                                         */
/*==============================================================*/




create nonclustered index HAB_RESER2_FK on HAB_RESER (HAB_ID ASC)
go

/*==============================================================*/
/* Index: HAB_RESER_FK                                          */
/*==============================================================*/




create nonclustered index HAB_RESER_FK on HAB_RESER (RESER_ID ASC)
go

/*==============================================================*/
/* Table: HOSPEDAJE                                             */
/*==============================================================*/
create table HOSPEDAJE (
   HOSP_ID              numeric(12)          identity,
   CLI_ID               int                  not null,
   HAB_NUM              int                  not null,
   FECHA_INGRESO        datetime             not null,
   FECHA_SALIDA         datetime             not null,
   constraint PK_HOSPEDAJE primary key (HOSP_ID)
)
go

/*==============================================================*/
/* Index: CLI_HOSP_FK                                           */
/*==============================================================*/




create nonclustered index CLI_HOSP_FK on HOSPEDAJE (CLI_ID ASC)
go

/*==============================================================*/
/* Table: PERSONAL                                              */
/*==============================================================*/
create table PERSONAL (
   PER_ID               numeric(12)          identity,
   PER_CEDULA           varchar(10)          not null,
   PER_NOMBRE           varchar(30)          not null,
   PER_APELLIDO         varchar(40)          not null,
   PER_TELEFONO         varchar(10)          not null,
   PER_CORREO_          varchar(50)          not null,
   PER_DIRECCION        varchar(150)         not null,
   PER_FECHANAC         datetime             not null,
   constraint PK_PERSONAL primary key (PER_ID)
)
go

/*==============================================================*/
/* Table: RESERVAS                                              */
/*==============================================================*/
create table RESERVAS (
   RESER_ID             numeric(12)          identity,
   CLI_ID               int                  not null,
   HAB_NUM              int                  not null,
   RESER_FECHAINGRESO   datetime             not null,
   RESER_FECHASALIDA    datetime             not null,
   RESER_ABONO          decimal(10,2)        not null,
   constraint PK_RESERVAS primary key (RESER_ID)
)
go

/*==============================================================*/
/* Index: CLI_RESER_FK                                          */
/*==============================================================*/




create nonclustered index CLI_RESER_FK on RESERVAS (CLI_ID ASC)
go

/*==============================================================*/
/* Table: RESER_HOSP                                            */
/*==============================================================*/
create table RESER_HOSP (
   HOSP_ID              int                  not null,
   RESER_ID             int                  not null,
   constraint PK_RESER_HOSP primary key (HOSP_ID, RESER_ID)
)
go

/*==============================================================*/
/* Index: RESER_HOSP2_FK                                        */
/*==============================================================*/




create nonclustered index RESER_HOSP2_FK on RESER_HOSP (RESER_ID ASC)
go

/*==============================================================*/
/* Index: RESER_HOSP_FK                                         */
/*==============================================================*/




create nonclustered index RESER_HOSP_FK on RESER_HOSP (HOSP_ID ASC)
go

alter table HAB_HOSP
   add constraint FK_HAB_HOSP_HAB_HOSP_HOSPEDAJ foreign key (HOSP_ID)
      references HOSPEDAJE (HOSP_ID)
go

alter table HAB_HOSP
   add constraint FK_HAB_HOSP_HAB_HOSP2_HABITACI foreign key (HAB_ID)
      references HABITACIONES (HAB_ID)
go

alter table HAB_PER
   add constraint FK_HAB_PER_HAB_PER_PERSONAL foreign key (PER_ID)
      references PERSONAL (PER_ID)
go

alter table HAB_PER
   add constraint FK_HAB_PER_HAB_PER2_HABITACI foreign key (HAB_ID)
      references HABITACIONES (HAB_ID)
go

alter table HAB_RESER
   add constraint FK_HAB_RESE_HAB_RESER_RESERVAS foreign key (RESER_ID)
      references RESERVAS (RESER_ID)
go

alter table HAB_RESER
   add constraint FK_HAB_RESE_HAB_RESER_HABITACI foreign key (HAB_ID)
      references HABITACIONES (HAB_ID)
go

alter table HOSPEDAJE
   add constraint FK_HOSPEDAJ_CLI_HOSP_CLIENTES foreign key (CLI_ID)
      references CLIENTES (CLI_ID)
go

alter table RESERVAS
   add constraint FK_RESERVAS_CLI_RESER_CLIENTES foreign key (CLI_ID)
      references CLIENTES (CLI_ID)
go

alter table RESER_HOSP
   add constraint FK_RESER_HO_RESER_HOS_HOSPEDAJ foreign key (HOSP_ID)
      references HOSPEDAJE (HOSP_ID)
go

alter table RESER_HOSP
   add constraint FK_RESER_HO_RESER_HOS_RESERVAS foreign key (RESER_ID)
      references RESERVAS (RESER_ID)
go

