.class public Lorg/apache/xmlbeans/impl/schema/z;
.super Lorg/apache/xmlbeans/impl/schema/s;
.source "SourceFile"

# interfaces
.implements Li5/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/z$a;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DATA_BABE:I = -0x25854542

.field private static final EMPTY_AG_ARRAY:[Li5/p;

.field private static final EMPTY_ANN_ARRAY:[Li5/o;

.field private static final EMPTY_GA_ARRAY:[Li5/t;

.field private static final EMPTY_GE_ARRAY:[Li5/u;

.field private static final EMPTY_IC_ARRAY:[Li5/v;

.field private static final EMPTY_MG_ARRAY:[Li5/y;

.field private static final EMPTY_ST_ARRAY:[Li5/c0;

.field public static final FIELD_GLOBAL:I = 0x1

.field public static final FIELD_LOCALATTR:I = 0x2

.field public static final FIELD_LOCALELT:I = 0x3

.field public static final FIELD_NONE:I = 0x0

.field public static final FILETYPE_SCHEMAATTRIBUTE:I = 0x4

.field public static final FILETYPE_SCHEMAATTRIBUTEGROUP:I = 0x7

.field public static final FILETYPE_SCHEMAELEMENT:I = 0x3

.field public static final FILETYPE_SCHEMAIDENTITYCONSTRAINT:I = 0x8

.field public static final FILETYPE_SCHEMAINDEX:I = 0x1

.field public static final FILETYPE_SCHEMAMODELGROUP:I = 0x6

.field public static final FILETYPE_SCHEMAPOINTER:I = 0x5

.field public static final FILETYPE_SCHEMATYPE:I = 0x2

.field static final FLAG_ABSTRACT:I = 0x40000

.field static final FLAG_ATTRIBUTE_TYPE:I = 0x80000

.field static final FLAG_BLOCK_EXT:I = 0x1000

.field static final FLAG_BLOCK_REST:I = 0x2000

.field static final FLAG_BOUNDED:I = 0x8

.field static final FLAG_COMPILED:I = 0x800

.field static final FLAG_DOCUMENT_TYPE:I = 0x2

.field static final FLAG_FINAL_EXT:I = 0x4000

.field static final FLAG_FINAL_LIST:I = 0x20000

.field static final FLAG_FINAL_REST:I = 0x8000

.field static final FLAG_FINAL_UNION:I = 0x10000

.field static final FLAG_FINITE:I = 0x10

.field static final FLAG_HAS_PATTERN:I = 0x100

.field static final FLAG_NUMERIC:I = 0x20

.field static final FLAG_ORDERED:I = 0x4

.field static final FLAG_ORDER_SENSITIVE:I = 0x200

.field public static final FLAG_PART_ABSTRACT:I = 0x80

.field public static final FLAG_PART_BLOCKEXT:I = 0x10

.field public static final FLAG_PART_BLOCKREST:I = 0x20

.field public static final FLAG_PART_BLOCKSUBST:I = 0x40

.field public static final FLAG_PART_FINALEXT:I = 0x100

.field public static final FLAG_PART_FINALREST:I = 0x200

.field public static final FLAG_PART_FIXED:I = 0x4

.field public static final FLAG_PART_NILLABLE:I = 0x8

.field public static final FLAG_PART_SKIPPABLE:I = 0x1

.field public static final FLAG_PROP_ISATTR:I = 0x1

.field public static final FLAG_PROP_JAVAARRAY:I = 0x8

.field public static final FLAG_PROP_JAVAOPTIONAL:I = 0x4

.field public static final FLAG_PROP_JAVASINGLETON:I = 0x2

.field static final FLAG_SIMPLE_TYPE:I = 0x1

.field static final FLAG_STRINGENUM:I = 0x40

.field static final FLAG_TOTAL_ORDER:I = 0x400

.field static final FLAG_UNION_OF_LISTS:I = 0x80

.field public static final MAJOR_VERSION:I = 0x2

.field public static METADATA_PACKAGE_GEN:Ljava/lang/String; = null

.field public static final MINOR_VERSION:I = 0x18

.field public static final RELEASE_NUMBER:I

.field static final SINGLE_ZERO_BYTE:[B

.field private static final _mask:[B

.field private static _random:Ljava/util/Random;

.field private static final packPat:Ljava/util/regex/Pattern;


# instance fields
.field private _allNonGroupHandlesResolved:Z

.field private _annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/o;",
            ">;"
        }
    .end annotation
.end field

.field private _attributeGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private _attributeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private _classloader:Ljava/lang/ClassLoader;

.field private _containers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/impl/schema/g;",
            ">;"
        }
    .end annotation
.end field

.field private _deps:Lorg/apache/xmlbeans/impl/schema/h;

.field private _documentTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private _filer:Li5/c;

.field private _globalAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private _globalElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private _globalTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private _identityConstraints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private _incomplete:Z

.field _linker:Li5/d0;

.field private _localHandles:Lorg/apache/xmlbeans/impl/schema/v;

.field private _modelGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private final _name:Ljava/lang/String;

.field private _namespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _redefinedAttributeGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private _redefinedGlobalTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private _redefinedModelGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private final _resolvedHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Li5/r;",
            ">;"
        }
    .end annotation
.end field

.field private _resourceLoader:Li5/m;

.field private _typeRefsByClassname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^(.+)(\\.[^.]+){2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/z;->packPat:Ljava/util/regex/Pattern;

    const-string v0, "org/apache/xmlbeans/metadata"

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/z;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Li5/c0;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_ST_ARRAY:[Li5/c0;

    new-array v1, v0, [Li5/u;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_GE_ARRAY:[Li5/u;

    new-array v1, v0, [Li5/t;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_GA_ARRAY:[Li5/t;

    new-array v1, v0, [Li5/y;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_MG_ARRAY:[Li5/y;

    new-array v1, v0, [Li5/p;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_AG_ARRAY:[Li5/p;

    new-array v1, v0, [Li5/v;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_IC_ARRAY:[Li5/v;

    new-array v1, v0, [Li5/o;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_ANN_ARRAY:[Li5/o;

    const/16 v1, 0x10

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->_mask:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->SINGLE_ZERO_BYTE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/s;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_identityConstraints:Ljava/util/Map;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_typeRefsByClassname:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_allNonGroupHandlesResolved:Z

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    .line 8
    sget-object v1, Lj5/o;->a:Le5/g;

    invoke-interface {v1}, La5/d;->q()La5/b;

    move-result-object v2

    const-string v3, "Loading type system {}"

    invoke-interface {v2, v0, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/schema/z;->_classloader:Ljava/lang/ClassLoader;

    iput-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_linker:Li5/d0;

    .line 10
    new-instance v3, Ll0/a;

    invoke-direct {v3, v2}, Ll0/a;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resourceLoader:Li5/m;

    .line 11
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/z;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-interface {v1}, La5/d;->q()La5/b;

    move-result-object p0

    const-string v1, "Finished loading type system {}"

    invoke-interface {p0, v0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 13
    sget-object v0, Lj5/o;->a:Le5/g;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    .line 14
    throw p0
.end method

.method public constructor <init>(Li5/m;Ljava/lang/String;Li5/d0;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/s;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_identityConstraints:Ljava/util/Map;

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_typeRefsByClassname:Ljava/util/Map;

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_allNonGroupHandlesResolved:Z

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/z;->_linker:Li5/d0;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resourceLoader:Li5/m;

    .line 35
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/z;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 36
    sget-object p1, Lj5/o;->a:Le5/g;

    invoke-interface {p1}, La5/d;->e()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, La5/b;->f(Ljava/lang/String;)V

    .line 37
    throw p0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/s;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_identityConstraints:Ljava/util/Map;

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_typeRefsByClassname:Ljava/util/Map;

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_allNonGroupHandlesResolved:Z

    .line 20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    .line 22
    sget-object v1, Lj5/o;->a:Le5/g;

    invoke-interface {v1}, La5/d;->q()La5/b;

    move-result-object v2

    const-string v3, "Loading type system {}"

    invoke-interface {v2, v0, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_classloader:Ljava/lang/ClassLoader;

    .line 24
    new-instance p1, Lj5/a;

    invoke-direct {p1}, Lj5/a;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/z;->_classloader:Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/t;->a(Lj5/a;Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_linker:Li5/d0;

    .line 25
    new-instance p1, Ll0/a;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/z;->_classloader:Ljava/lang/ClassLoader;

    invoke-direct {p1, v2}, Ll0/a;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resourceLoader:Li5/m;

    .line 26
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/z;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-interface {v1}, La5/d;->q()La5/b;

    move-result-object p0

    const-string p1, "Finished loading type system {}"

    invoke-interface {p0, v0, p1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 28
    sget-object p1, Lj5/o;->a:Le5/g;

    invoke-interface {p1}, La5/d;->e()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, La5/b;->f(Ljava/lang/String;)V

    .line 29
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/s;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_identityConstraints:Ljava/util/Map;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_typeRefsByClassname:Ljava/util/Map;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_allNonGroupHandlesResolved:Z

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 43
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->nextBytes([B)V

    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ln5/b;->a([B)[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/z;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".system."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_classloader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static synthetic a(Li5/r$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$refHelper$2(Li5/r$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private addContainer(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/g;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/schema/g;-><init>(Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iput-object p0, v0, Lorg/apache/xmlbeans/impl/schema/g;->a:Li5/f0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private assertContainersHelper(Ljava/util/List;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/r$a;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/apache/xmlbeans/impl/schema/g;",
            "Ljava/util/List<",
            "+",
            "Li5/r;",
            ">;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 6
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/f;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    .line 7
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-void
.end method

.method private assertContainersHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/apache/xmlbeans/impl/schema/g;",
            "Ljava/util/List<",
            "+",
            "Li5/r;",
            ">;>;",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "+",
            "Li5/r;",
            ">;+",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 2
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    if-nez p3, :cond_0

    new-instance p3, Lorg/apache/xmlbeans/impl/schema/x;

    const/4 p1, 0x0

    invoke-direct {p3, p1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    :cond_0
    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/schema/x;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    new-instance p2, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 p3, 0x14

    invoke-direct {p2, p3}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    .line 4
    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-void
.end method

.method private assertContainersSynchronized()V
    .locals 0

    return-void
.end method

.method public static synthetic b(I)[Li5/c0;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$documentTypes$5(I)[Li5/c0;

    move-result-object p0

    return-object p0
.end method

.method private static buildAttributeTypeMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/r;",
            ">;)",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/r;

    .line 6
    check-cast v1, Li5/c0;

    .line 7
    invoke-interface {v1}, Li5/c0;->e0()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1}, Li5/c0;->getRef()Li5/c0$a;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildAttributeTypeMap([Li5/c0;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li5/c0;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 3
    invoke-interface {v3}, Li5/c0;->e0()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v3}, Li5/c0;->getRef()Li5/c0$a;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildComponentRefList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/r;",
            ">;)",
            "Ljava/util/List<",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static buildComponentRefList([Li5/r;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li5/r;",
            ")",
            "Ljava/util/List<",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->buildComponentRefList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildComponentRefMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/r;",
            ">;)",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/w;

    .line 3
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/i;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    invoke-static {v0, v1, v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static buildComponentRefMap([Li5/r;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li5/r;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->buildComponentRefMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalElements:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/opc/e;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalAttributes:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/e;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lorg/apache/poi/openxml4j/opc/e;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_modelGroups:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/poifs/nio/c;

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/nio/c;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_attributeGroups:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/y;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lorg/apache/xmlbeans/impl/schema/y;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_identityConstraints:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/e;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Lorg/apache/poi/openxml4j/opc/e;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalTypes:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/poifs/nio/c;

    invoke-direct {v1, v3}, Lorg/apache/poi/poifs/nio/c;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_attributeTypes:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/y;

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/schema/y;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedGlobalTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedModelGroups:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedAttributeGroups:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/openxml4j/opc/e;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/opc/e;-><init>(I)V

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/List;Ljava/util/List;Ljava/util/function/BiConsumer;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedModelGroups:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/poifs/nio/c;

    invoke-direct {v0, v4}, Lorg/apache/poi/poifs/nio/c;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/List;Ljava/util/List;Ljava/util/function/BiConsumer;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedAttributeGroups:Ljava/util/List;

    new-instance p2, Lorg/apache/xmlbeans/impl/schema/y;

    invoke-direct {p2, v3}, Lorg/apache/xmlbeans/impl/schema/y;-><init>(I)V

    invoke-direct {p0, p1, p3, p2}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainersHelper(Ljava/util/List;Ljava/util/List;Ljava/util/function/BiConsumer;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_annotations:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_annotations:Ljava/util/List;

    const-string p2, ""

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/z;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lx1/c;

    const/4 v0, 0x7

    invoke-direct {p3, v0, p2}, Lx1/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Lg1/j;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lg1/j;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private buildContainersHelper(Ljava/util/List;Ljava/util/List;Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Li5/r$a;",
            ">(",
            "Ljava/util/List<",
            "Li5/r$a;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/apache/xmlbeans/impl/schema/g;",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/z;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v0

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/r$a;

    invoke-interface {p3, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Li5/r$a;",
            ">(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/apache/xmlbeans/impl/schema/g;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/xslf/util/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2}, Lorg/apache/poi/xslf/util/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private static buildDocumentMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/r;",
            ">;)",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/r;

    .line 4
    check-cast v1, Li5/c0;

    .line 5
    invoke-interface {v1}, Li5/c0;->l0()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1}, Li5/c0;->getRef()Li5/c0$a;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildDocumentMap([Li5/c0;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li5/c0;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->buildDocumentMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private buildTypeRefsByClassname(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Li5/c0;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/c0;

    invoke-interface {v2}, Li5/c0;->getRef()Li5/c0$a;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static synthetic c(I)[Li5/c0;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$attributeTypes$6(I)[Li5/c0;

    move-result-object p0

    return-object p0
.end method

.method public static crackPointer(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ln5/d;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v2, -0x25854542

    if-eq p0, v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :cond_1
    const/16 p0, 0x18

    if-le v2, p0, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :cond_2
    const/16 p0, 0x12

    if-lt v2, p0, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x5

    if-eq p0, v2, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :cond_4
    :try_start_7
    new-instance p0, Lorg/apache/xmlbeans/impl/schema/z$a;

    const-string v2, "pointer"

    const-string v3, "unk"

    invoke-direct {p0, v2, v3}, Lorg/apache/xmlbeans/impl/schema/z$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/z$a;->b(Ln5/d;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    if-nez v2, :cond_5

    move-object p0, v0

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object p0

    :goto_2
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    return-object v0
.end method

.method public static synthetic d(I)[Li5/t;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$globalAttributes$8(I)[Li5/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->buildComponentRefList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(I)[Li5/v;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$identityConstraints$13(I)[Li5/v;

    move-result-object p0

    return-object p0
.end method

.method private fixupContainers()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/g;

    monitor-enter v1

    :try_start_0
    iput-object p0, v1, Lorg/apache/xmlbeans/impl/schema/g;->a:Li5/f0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lorg/apache/xmlbeans/impl/schema/g;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    return-void
.end method

.method public static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/impl/schema/z;
    .locals 3

    const-string v0, ".TypeSystemHolder"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "typeSystem"

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ld/f;->L(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Ld/f;->W(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic g(Li5/r$a;Li5/r$a;)Li5/r$a;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$buildComponentRefMap$0(Li5/r$a;Li5/r$a;)Li5/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(I)[Li5/p;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$attributeGroups$11(I)[Li5/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(I)[Li5/u;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$globalElements$7(I)[Li5/u;

    move-result-object p0

    return-object p0
.end method

.method private initFromHeader()V
    .locals 9

    sget-object v0, Lj5/o;->a:Le5/g;

    invoke-interface {v0}, La5/d;->q()La5/b;

    move-result-object v0

    const-string v1, "Reading unresolved handles for type system {}"

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    const-string v3, "index"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/xmlbeans/impl/schema/v;-><init>(Lorg/apache/xmlbeans/impl/schema/z;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/v;->h(Lorg/apache/xmlbeans/impl/schema/l0;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->o()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalElements:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->o()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->o()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_modelGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->o()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->o()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_identityConstraints:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->o()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalTypes:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->o()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_documentTypes:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->o()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_attributeTypes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_typeRefsByClassname:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_namespaces:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->p(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->p(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedModelGroups:Ljava/util/List;

    invoke-virtual {v1, v4}, Lorg/apache/xmlbeans/impl/schema/l0;->p(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedAttributeGroups:Ljava/util/List;

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :cond_2
    :goto_2
    const/16 v5, 0x13

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->k()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, v1, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lorg/apache/xmlbeans/impl/schema/z;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v7

    :goto_3
    if-ge v3, v5, :cond_3

    invoke-virtual {v1, v7}, Lorg/apache/xmlbeans/impl/schema/l0;->e(Lorg/apache/xmlbeans/impl/schema/g;)Lorg/apache/xmlbeans/impl/schema/d;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iput-object v6, p0, Lorg/apache/xmlbeans/impl/schema/z;->_annotations:Ljava/util/List;

    :cond_4
    invoke-direct {p0, v0, v2, v4}, Lorg/apache/xmlbeans/impl/schema/z;->buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    return-void

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    :cond_5
    throw p0
.end method

.method public static synthetic j(I)[Li5/c0;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$redefinedGlobalTypes$4(I)[Li5/c0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(I)[Li5/p;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$redefinedAttributeGroups$12(I)[Li5/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/apache/xmlbeans/impl/schema/z;Ljava/util/function/BiConsumer;Ljavax/xml/namespace/QName;Li5/r$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$buildContainersHelper$1(Ljava/util/function/BiConsumer;Ljavax/xml/namespace/QName;Li5/r$a;)V

    return-void
.end method

.method private static synthetic lambda$attributeGroups$11(I)[Li5/p;
    .locals 0

    new-array p0, p0, [Li5/p;

    return-object p0
.end method

.method private static synthetic lambda$attributeTypes$6(I)[Li5/c0;
    .locals 0

    new-array p0, p0, [Li5/c0;

    return-object p0
.end method

.method private static synthetic lambda$buildComponentRefMap$0(Li5/r$a;Li5/r$a;)Li5/r$a;
    .locals 0

    return-object p1
.end method

.method private synthetic lambda$buildContainersHelper$1(Ljava/util/function/BiConsumer;Ljavax/xml/namespace/QName;Li5/r$a;)V
    .locals 0

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/z;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$documentTypes$5(I)[Li5/c0;
    .locals 0

    new-array p0, p0, [Li5/c0;

    return-object p0
.end method

.method private static synthetic lambda$globalAttributes$8(I)[Li5/t;
    .locals 0

    new-array p0, p0, [Li5/t;

    return-object p0
.end method

.method private static synthetic lambda$globalElements$7(I)[Li5/u;
    .locals 0

    new-array p0, p0, [Li5/u;

    return-object p0
.end method

.method private static synthetic lambda$globalTypes$3(I)[Li5/c0;
    .locals 0

    new-array p0, p0, [Li5/c0;

    return-object p0
.end method

.method private static synthetic lambda$identityConstraints$13(I)[Li5/v;
    .locals 0

    new-array p0, p0, [Li5/v;

    return-object p0
.end method

.method private static synthetic lambda$modelGroups$9(I)[Li5/y;
    .locals 0

    new-array p0, p0, [Li5/y;

    return-object p0
.end method

.method private static synthetic lambda$redefinedAttributeGroups$12(I)[Li5/p;
    .locals 0

    new-array p0, p0, [Li5/p;

    return-object p0
.end method

.method private static synthetic lambda$redefinedGlobalTypes$4(I)[Li5/c0;
    .locals 0

    new-array p0, p0, [Li5/c0;

    return-object p0
.end method

.method private static synthetic lambda$redefinedModelGroups$10(I)[Li5/y;
    .locals 0

    new-array p0, p0, [Li5/y;

    return-object p0
.end method

.method private static synthetic lambda$refHelper$2(Li5/r$a;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic m(I)[Li5/c0;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$globalTypes$3(I)[Li5/c0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->buildComponentRefMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static nameToPathString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static declared-synchronized nextBytes([B)V
    .locals 9

    const-class v0, Lorg/apache/xmlbeans/impl/schema/z;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/z;->_random:Ljava/util/Random;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-nez v1, :cond_3

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ln5/e;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-class v4, Lorg/apache/xmlbeans/impl/schema/z;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v4, 0x9

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "user.name"

    aput-object v6, v5, v2

    const-string v6, "user.dir"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "user.timezone"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "user.country"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string v6, "java.class.path"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const-string v6, "java.home"

    const/4 v7, 0x5

    aput-object v6, v5, v7

    const-string v6, "java.vendor"

    const/4 v7, 0x6

    aput-object v6, v5, v7

    const-string v6, "java.version"

    const/4 v7, 0x7

    aput-object v6, v5, v7

    const-string v6, "os.version"

    const/16 v7, 0x8

    aput-object v6, v5, v7

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v5, v6

    invoke-static {v7}, Lb1/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move v4, v2

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_2

    sget-object v5, Lorg/apache/xmlbeans/impl/schema/z;->_mask:[B

    array-length v6, v5

    rem-int v6, v4, v6

    aget-byte v7, v5, v6

    mul-int/lit8 v7, v7, 0x15

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    int-to-byte v8, v4

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_5

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p0

    goto :goto_a

    :catch_0
    move-exception v1

    goto :goto_7

    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v3

    :try_start_8
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v1

    :try_start_b
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_7
    :try_start_c
    sget-object v3, Lj5/o;->a:Le5/g;

    invoke-interface {v3}, La5/d;->e()La5/b;

    move-result-object v3

    invoke-interface {v3, v1}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, La5/b;->f(Ljava/lang/String;)V

    :goto_8
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/z;->_random:Ljava/util/Random;

    :cond_3
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/z;->_random:Ljava/util/Random;

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextBytes([B)V

    :goto_9
    array-length v1, p0

    if-ge v2, v1, :cond_4

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/z;->_mask:[B

    array-length v3, v1

    and-int/2addr v3, v2

    aget-byte v4, p0, v2

    aget-byte v1, v1, v3

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_4
    monitor-exit v0

    return-void

    :goto_a
    monitor-exit v0

    throw p0
.end method

.method public static synthetic o(I)[Li5/y;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$modelGroups$9(I)[Li5/y;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(I)[Li5/y;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->lambda$redefinedModelGroups$10(I)[Li5/y;

    move-result-object p0

    return-object p0
.end method

.method private static refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Li5/r$a;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;TU;>;",
            "Ljava/util/function/IntFunction<",
            "[TU;>;[TU;)[TU;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v0, 0xb

    invoke-direct {p3, v0}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p3

    :cond_1
    :goto_0
    return-object p3
.end method

.method private static refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/r$a;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;TU;>;",
            "Ljava/util/function/IntFunction<",
            "[TU;>;[TU;)[TU;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public annotations()[Li5/o;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_annotations:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_annotations:Ljava/util/List;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_ANN_ARRAY:[Li5/o;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/o;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_ANN_ARRAY:[Li5/o;

    :goto_1
    return-object p0
.end method

.method public attributeGroups()[Li5/p;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_attributeGroups:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    new-instance v1, Lorg/apache/poi/hssf/record/b1;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/b1;-><init>(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_AG_ARRAY:[Li5/p;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/p;

    return-object p0
.end method

.method public attributeTypes()[Li5/c0;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_attributeTypes:Ljava/util/Map;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/x;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    new-instance v1, Lh5/f;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lh5/f;-><init>(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_ST_ARRAY:[Li5/c0;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/c0;

    return-object p0
.end method

.method public containers()[Lorg/apache/xmlbeans/impl/schema/g;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/schema/g;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/schema/g;

    return-object p0
.end method

.method public documentTypes()[Li5/c0;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_documentTypes:Ljava/util/Map;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/x;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    new-instance v2, Lh5/f;

    invoke-direct {v2, v1}, Lh5/f;-><init>(I)V

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_ST_ARRAY:[Li5/c0;

    invoke-static {p0, v0, v2, v1}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/c0;

    return-object p0
.end method

.method public findAttributeGroupRef(Ljavax/xml/namespace/QName;)Li5/p$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_attributeGroups:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/p$a;

    return-object p0
.end method

.method public findAttributeRef(Ljavax/xml/namespace/QName;)Li5/t$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalAttributes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/t$a;

    return-object p0
.end method

.method public findAttributeTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_attributeTypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/c0$a;

    return-object p0
.end method

.method public findDocumentTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_documentTypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/c0$a;

    return-object p0
.end method

.method public findElementRef(Ljavax/xml/namespace/QName;)Li5/u$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalElements:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/u$a;

    return-object p0
.end method

.method public findIdentityConstraintRef(Ljavax/xml/namespace/QName;)Li5/v$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_identityConstraints:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/v$a;

    return-object p0
.end method

.method public findModelGroupRef(Ljavax/xml/namespace/QName;)Li5/y$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_modelGroups:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/y$a;

    return-object p0
.end method

.method public findTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalTypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/c0$a;

    return-object p0
.end method

.method public getBasePackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/z;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_classloader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_containers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/g;

    return-object p0
.end method

.method public getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->addContainer(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDependencies()Lorg/apache/xmlbeans/impl/schema/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLinker()Li5/d0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_linker:Li5/d0;

    return-object p0
.end method

.method public getLoaderStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resourceLoader:Li5/m;

    invoke-interface {p0, p1}, Li5/m;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/z;->packPat:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    :goto_0
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaces()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_namespaces:Ljava/util/Set;

    return-object p0
.end method

.method public getSaverStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_filer:Li5/c;

    check-cast v0, Ln5/a;

    invoke-virtual {v0, p1}, Ln5/a;->a(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    move-object v5, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :goto_1
    new-instance p1, Li5/e0;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p1
.end method

.method public getSourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resourceLoader:Li5/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/src"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Li5/m;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getTypePool()Lorg/apache/xmlbeans/impl/schema/v;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    return-object p0
.end method

.method public getTypeRefsByClassname()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Li5/r$a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_typeRefsByClassname:Ljava/util/Map;

    return-object p0
.end method

.method public final getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;
    .locals 0

    return-object p0
.end method

.method public globalAttributes()[Li5/t;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalAttributes:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v1, Lh5/e;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lh5/e;-><init>(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_GA_ARRAY:[Li5/t;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/t;

    return-object p0
.end method

.method public globalElements()[Li5/u;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalElements:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    new-instance v1, Lorg/apache/poi/hssf/record/b1;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/b1;-><init>(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_GE_ARRAY:[Li5/u;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/u;

    return-object p0
.end method

.method public globalTypes()[Li5/c0;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalTypes:Ljava/util/Map;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/x;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    new-instance v2, Lh5/f;

    invoke-direct {v2, v1}, Lh5/f;-><init>(I)V

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_ST_ARRAY:[Li5/c0;

    invoke-static {p0, v0, v2, v1}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/c0;

    return-object p0
.end method

.method public handleForType(Li5/c0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->g(Li5/c0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public identityConstraints()[Li5/v;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_identityConstraints:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v1, Lh5/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lh5/f;-><init>(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_IC_ARRAY:[Li5/v;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/v;

    return-object p0
.end method

.method public isIncomplete()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    return p0
.end method

.method public isNamespaceDefined(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_namespaces:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadFromStscState(Lorg/apache/xmlbeans/impl/schema/e0;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/v;-><init>(Lorg/apache/xmlbeans/impl/schema/z;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public modelGroups()[Li5/y;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_modelGroups:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    new-instance v1, Lorg/apache/poi/hssf/record/b1;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/b1;-><init>(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_MG_ARRAY:[Li5/y;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/y;

    return-object p0
.end method

.method public redefinedAttributeGroups()[Li5/p;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedAttributeGroups:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    new-instance v1, Lorg/apache/poi/hssf/record/b1;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/b1;-><init>(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_AG_ARRAY:[Li5/p;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/p;

    return-object p0
.end method

.method public redefinedGlobalTypes()[Li5/c0;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedGlobalTypes:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v1, Lh5/e;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lh5/e;-><init>(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_ST_ARRAY:[Li5/c0;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/c0;

    return-object p0
.end method

.method public redefinedModelGroups()[Li5/y;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_redefinedModelGroups:Ljava/util/List;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/x;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    new-instance v1, Lh5/f;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lh5/f;-><init>(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/z;->EMPTY_MG_ARRAY:[Li5/y;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/y;

    return-object p0
.end method

.method public resolve()V
    .locals 4

    sget-object v0, Lj5/o;->a:Le5/g;

    invoke-interface {v0}, La5/d;->q()La5/b;

    move-result-object v1

    const-string v2, "Resolve called type system {}"

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_allNonGroupHandlesResolved:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, La5/d;->q()La5/b;

    move-result-object v0

    const-string v1, "Resolving all handles for type system {}"

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalElements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_globalTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_documentTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/r$a;

    invoke-virtual {v1}, Li5/r$a;->a()Li5/r;

    goto :goto_0

    :cond_1
    sget-object v0, Lj5/o;->a:Le5/g;

    invoke-interface {v0}, La5/d;->q()La5/b;

    move-result-object v0

    const-string v1, "Finished resolving type system {}"

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_allNonGroupHandlesResolved:Z

    return-void
.end method

.method public resolveHandle(Ljava/lang/String;)Li5/r;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/r;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v4, :cond_28

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v4

    const v5, 0xffff

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;I)V

    iget v5, v3, Lorg/apache/xmlbeans/impl/schema/l0;->i:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_26

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v5, v7, :cond_11

    if-eq v5, v8, :cond_10

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/16 v11, 0xf

    const/16 v12, 0x16

    const/16 v13, 0x15

    if-eq v5, v8, :cond_a

    const/4 v8, 0x7

    if-eq v5, v8, :cond_5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_4

    sget-object v5, Lj5/o;->a:Le5/g;

    invoke-interface {v5}, La5/d;->q()La5/b;

    move-result-object v5

    const-string v7, "Resolving id constraint for handle {}"

    invoke-interface {v5, v2, v7}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->b(Lorg/apache/xmlbeans/impl/schema/g;Ljavax/xml/namespace/QName;)V

    new-instance v8, Lorg/apache/xmlbeans/impl/schema/k;

    invoke-direct {v8, v7}, Lorg/apache/xmlbeans/impl/schema/k;-><init>(Lorg/apache/xmlbeans/impl/schema/g;)V

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/k;->e:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    iput v5, v8, Lorg/apache/xmlbeans/impl/schema/k;->f:I

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/k;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/apache/xmlbeans/impl/schema/l0;->e(Lorg/apache/xmlbeans/impl/schema/g;)Lorg/apache/xmlbeans/impl/schema/d;

    move-result-object v5

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/k;->g:Li5/o;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    new-array v7, v5, [Ljava/lang/String;

    move v10, v9

    :goto_0
    if-ge v10, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10
    :try_end_1
    .catch Li5/e0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v9, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_0
    :try_start_2
    invoke-virtual {v7}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/k;->c:[Ljava/lang/String;
    :try_end_2
    .catch Li5/e0; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v5, v8, Lorg/apache/xmlbeans/impl/schema/k;->f:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v5

    check-cast v5, Li5/v$a;

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/k;->d:Li5/v$a;

    :cond_1
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :goto_1
    if-ge v9, v5, :cond_2

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iput-object v6, v8, Lorg/apache/xmlbeans/impl/schema/k;->h:Ljava/util/Map;

    invoke-virtual {v3, v13}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/k;->i:Ljava/lang/String;
    :try_end_3
    .catch Li5/e0; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    goto/16 :goto_2f

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v9, v1

    :goto_2
    :try_start_4
    new-instance v1, Li5/e0;

    const-string v5, "Cannot load type from typesystem"

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v8, 0xe

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v1

    :goto_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Illegal handle type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    sget-object v5, Lj5/o;->a:Le5/g;

    invoke-interface {v5}, La5/d;->q()La5/b;

    move-result-object v5

    const-string v6, "Resolving attribute group for handle {}"

    invoke-interface {v5, v2, v6}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v5

    invoke-virtual {v3, v5, v15}, Lorg/apache/xmlbeans/impl/schema/l0;->b(Lorg/apache/xmlbeans/impl/schema/g;Ljavax/xml/namespace/QName;)V

    new-instance v8, Lorg/apache/xmlbeans/impl/schema/e;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v6, Li5/p$a;

    invoke-direct {v6, v8}, Li5/r$a;-><init>(Li5/r;)V

    iput-object v6, v8, Lorg/apache/xmlbeans/impl/schema/e;->k:Li5/p$a;

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/e;->a:Lorg/apache/xmlbeans/impl/schema/g;

    :try_start_5
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v6

    if-ne v6, v10, :cond_6

    move/from16 v17, v10

    goto :goto_5

    :cond_6
    move/from16 v17, v9

    :goto_5
    invoke-virtual {v3, v12}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v9, v0

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :cond_7
    move-object/from16 v18, v7

    :goto_6
    invoke-virtual {v3, v11}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v6

    if-ne v6, v10, :cond_8

    move/from16 v19, v10

    goto :goto_7

    :cond_8
    move/from16 v19, v9

    :goto_7
    sget-object v6, Lq5/b;->E0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Li5/e0; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v10, v6, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object v6, v6, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    invoke-interface {v10, v9, v6, v7}, Li5/d0;->parse(Ljava/lang/String;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6
    :try_end_6
    .catch Li5/e0; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    check-cast v6, Lq5/b;

    invoke-interface {v6}, Lq5/b;->D()Lq5/e;

    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->e(Lorg/apache/xmlbeans/impl/schema/g;)Lorg/apache/xmlbeans/impl/schema/d;

    move-result-object v20

    move-object v14, v8

    invoke-virtual/range {v14 .. v20}, Lorg/apache/xmlbeans/impl/schema/e;->a(Ljavax/xml/namespace/QName;Ljava/lang/String;ZLjava/lang/String;ZLorg/apache/xmlbeans/impl/schema/d;)V

    invoke-virtual {v3, v13}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/e;->j:Ljava/lang/String;
    :try_end_7
    .catch Li5/e0; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_9
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    goto/16 :goto_2f

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v9, v1

    :goto_8
    :try_start_8
    new-instance v1, Li5/e0;

    const-string v5, "Cannot load type from typesystem"

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v8, 0xe

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v1

    :goto_9
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_a
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    throw v1

    :cond_a
    sget-object v5, Lj5/o;->a:Le5/g;

    invoke-interface {v5}, La5/d;->q()La5/b;

    move-result-object v5

    const-string v6, "Resolving model group for handle {}"

    invoke-interface {v5, v2, v6}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v5

    invoke-virtual {v3, v5, v15}, Lorg/apache/xmlbeans/impl/schema/l0;->b(Lorg/apache/xmlbeans/impl/schema/g;Ljavax/xml/namespace/QName;)V

    new-instance v8, Lorg/apache/xmlbeans/impl/schema/n;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v6, Li5/y$a;

    invoke-direct {v6, v8}, Li5/r$a;-><init>(Li5/r;)V

    iput-object v6, v8, Lorg/apache/xmlbeans/impl/schema/n;->l:Li5/y$a;

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/n;->a:Lorg/apache/xmlbeans/impl/schema/g;

    :try_start_9
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v6

    if-ne v6, v10, :cond_b

    move/from16 v17, v10

    goto :goto_b

    :cond_b
    move/from16 v17, v9

    :goto_b
    invoke-virtual {v3, v12}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :catch_6
    move-exception v0

    move-object v9, v0

    goto :goto_f

    :catch_7
    move-exception v0

    move-object v1, v0

    goto :goto_10

    :cond_c
    move-object/from16 v18, v7

    :goto_c
    invoke-virtual {v3, v12}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v6

    goto :goto_d

    :cond_d
    move-object/from16 v19, v7

    :goto_d
    invoke-virtual {v3, v11}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v6

    if-ne v6, v10, :cond_e

    move/from16 v20, v10

    goto :goto_e

    :cond_e
    move/from16 v20, v9

    :goto_e
    sget-object v6, Lq5/d;->I0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v9
    :try_end_9
    .catch Li5/e0; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v10, v6, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object v6, v6, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    invoke-interface {v10, v9, v6, v7}, Li5/d0;->parse(Ljava/lang/String;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6
    :try_end_a
    .catch Li5/e0; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    check-cast v6, Lq5/d;

    invoke-interface {v6}, Lq5/d;->getGroup()Lq5/f;

    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->e(Lorg/apache/xmlbeans/impl/schema/g;)Lorg/apache/xmlbeans/impl/schema/d;

    move-result-object v21

    move-object v14, v8

    invoke-virtual/range {v14 .. v21}, Lorg/apache/xmlbeans/impl/schema/n;->a(Ljavax/xml/namespace/QName;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLorg/apache/xmlbeans/impl/schema/d;)V

    invoke-virtual {v3, v13}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/n;->k:Ljava/lang/String;
    :try_end_b
    .catch Li5/e0; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_f
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    goto/16 :goto_2f

    :catch_8
    move-exception v0

    move-object v1, v0

    move-object v9, v1

    :goto_f
    :try_start_c
    new-instance v1, Li5/e0;

    const-string v5, "Cannot load type from typesystem"

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v8, 0xe

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v1

    :goto_10
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_11
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    throw v1

    :cond_10
    sget-object v5, Lj5/o;->a:Le5/g;

    invoke-interface {v5}, La5/d;->q()La5/b;

    move-result-object v5

    const-string v6, "Resolving attribute for handle {}"

    invoke-interface {v5, v2, v6}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->b(Lorg/apache/xmlbeans/impl/schema/g;Ljavax/xml/namespace/QName;)V

    new-instance v8, Lorg/apache/xmlbeans/impl/schema/i;

    invoke-direct {v8, v6}, Lorg/apache/xmlbeans/impl/schema/i;-><init>(Lorg/apache/xmlbeans/impl/schema/g;)V

    invoke-virtual {v3, v8, v5, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->d(Lorg/apache/xmlbeans/impl/schema/l;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/schema/g;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/i;->l:Ljava/lang/String;
    :try_end_d
    .catch Li5/e0; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    goto/16 :goto_2f

    :goto_12
    move-object v1, v0

    goto :goto_17

    :goto_13
    move-object v14, v0

    goto :goto_15

    :goto_14
    move-object v1, v0

    goto :goto_16

    :catchall_3
    move-exception v0

    goto :goto_12

    :catch_9
    move-exception v0

    goto :goto_13

    :catch_a
    move-exception v0

    goto :goto_14

    :goto_15
    :try_start_e
    new-instance v1, Li5/e0;

    const-string v10, "Cannot load type from typesystem"

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v13, 0xe

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v1

    :goto_16
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :goto_17
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    throw v1

    :cond_11
    sget-object v5, Lj5/o;->a:Le5/g;

    invoke-interface {v5}, La5/d;->q()La5/b;

    move-result-object v5

    const-string v6, "Resolving element for handle {}"

    invoke-interface {v5, v2, v6}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_f
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    if-ne v5, v8, :cond_25

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->g()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->g()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->q()Li5/k;

    move-result-object v11

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v13

    invoke-virtual {v3, v13, v12}, Lorg/apache/xmlbeans/impl/schema/l0;->b(Lorg/apache/xmlbeans/impl/schema/g;Ljavax/xml/namespace/QName;)V

    new-instance v14, Lorg/apache/xmlbeans/impl/schema/j;

    invoke-direct {v14, v13}, Lorg/apache/xmlbeans/impl/schema/j;-><init>(Lorg/apache/xmlbeans/impl/schema/g;)V

    iput v5, v14, Lorg/apache/xmlbeans/impl/schema/o;->a:I
    :try_end_f
    .catch Li5/e0; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    iput-object v7, v14, Lorg/apache/xmlbeans/impl/schema/o;->b:Ljava/math/BigInteger;

    const v5, 0x7fffffff

    if-nez v7, :cond_12

    :goto_18
    move v7, v5

    goto :goto_19

    :cond_12
    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v15

    if-gtz v15, :cond_13

    move v7, v9

    goto :goto_19

    :cond_13
    sget-object v15, Lorg/apache/xmlbeans/impl/schema/o;->s:Ljava/math/BigInteger;

    invoke-virtual {v7, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    :goto_19
    iput v7, v14, Lorg/apache/xmlbeans/impl/schema/o;->g:I
    :try_end_10
    .catch Li5/e0; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_15
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    iput-object v8, v14, Lorg/apache/xmlbeans/impl/schema/o;->c:Ljava/math/BigInteger;

    if-nez v8, :cond_15

    goto :goto_1a

    :cond_15
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-gtz v7, :cond_16

    move v5, v9

    goto :goto_1a

    :cond_16
    sget-object v7, Lorg/apache/xmlbeans/impl/schema/o;->s:Ljava/math/BigInteger;

    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    :goto_1a
    iput v5, v14, Lorg/apache/xmlbeans/impl/schema/o;->h:I
    :try_end_11
    .catch Li5/e0; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_18

    move v5, v10

    goto :goto_1b

    :cond_18
    move v5, v9

    :goto_1b
    :try_start_12
    iput-object v11, v14, Lorg/apache/xmlbeans/impl/schema/o;->e:Li5/k;

    iput-boolean v5, v14, Lorg/apache/xmlbeans/impl/schema/o;->f:Z
    :try_end_12
    .catch Li5/e0; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_13
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v5

    check-cast v5, Li5/c0$a;
    :try_end_13
    .catch Li5/e0; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    iput-object v12, v14, Lorg/apache/xmlbeans/impl/schema/o;->n:Ljavax/xml/namespace/QName;

    iput-object v5, v14, Lorg/apache/xmlbeans/impl/schema/o;->p:Li5/c0$a;
    :try_end_14
    .catch Li5/e0; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_19

    move v7, v10

    goto :goto_1c

    :cond_19
    move v7, v9

    :goto_1c
    invoke-virtual {v14, v5, v7}, Lorg/apache/xmlbeans/impl/schema/o;->U0(Ljava/lang/String;Z)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->v()Lorg/apache/xmlbeans/impl/schema/h0;

    move-result-object v5

    iput-object v5, v14, Lorg/apache/xmlbeans/impl/schema/o;->r:Lorg/apache/xmlbeans/impl/schema/h0;

    goto :goto_20

    :goto_1d
    move-object v1, v0

    goto/16 :goto_2e

    :goto_1e
    move-object v13, v0

    goto/16 :goto_2c

    :goto_1f
    move-object v1, v0

    goto/16 :goto_2d

    :catchall_4
    move-exception v0

    goto :goto_1d

    :catch_b
    move-exception v0

    goto :goto_1e

    :catch_c
    move-exception v0

    goto :goto_1f

    :cond_1a
    :goto_20
    and-int/lit8 v5, v6, 0x8

    if-eqz v5, :cond_1b

    move v5, v10

    goto :goto_21

    :cond_1b
    move v5, v9

    :goto_21
    iput-boolean v5, v14, Lorg/apache/xmlbeans/impl/schema/o;->o:Z
    :try_end_15
    .catch Li5/e0; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    and-int/lit8 v5, v6, 0x10

    if-eqz v5, :cond_1c

    move v5, v10

    goto :goto_22

    :cond_1c
    move v5, v9

    :goto_22
    and-int/lit8 v7, v6, 0x20

    if-eqz v7, :cond_1d

    move v7, v10

    goto :goto_23

    :cond_1d
    move v7, v9

    :goto_23
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_1e

    move v8, v10

    goto :goto_24

    :cond_1e
    move v8, v9

    :goto_24
    :try_start_16
    iput-boolean v5, v14, Lorg/apache/xmlbeans/impl/schema/m;->t:Z

    iput-boolean v7, v14, Lorg/apache/xmlbeans/impl/schema/m;->u:Z

    iput-boolean v8, v14, Lorg/apache/xmlbeans/impl/schema/m;->v:Z
    :try_end_16
    .catch Li5/e0; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->r()Lw5/a;

    move-result-object v5

    iput-object v5, v14, Lorg/apache/xmlbeans/impl/schema/m;->y:Lw5/a;

    and-int/lit16 v5, v6, 0x80

    if-eqz v5, :cond_1f

    move v5, v10

    goto :goto_25

    :cond_1f
    move v5, v9

    :goto_25
    iput-boolean v5, v14, Lorg/apache/xmlbeans/impl/schema/m;->w:Z

    invoke-virtual {v3, v13}, Lorg/apache/xmlbeans/impl/schema/l0;->e(Lorg/apache/xmlbeans/impl/schema/g;)Lorg/apache/xmlbeans/impl/schema/d;

    move-result-object v5

    iput-object v5, v14, Lorg/apache/xmlbeans/impl/schema/m;->x:Li5/o;
    :try_end_17
    .catch Li5/e0; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    and-int/lit16 v5, v6, 0x100

    if-eqz v5, :cond_20

    move v5, v10

    goto :goto_26

    :cond_20
    move v5, v9

    :goto_26
    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_21

    goto :goto_27

    :cond_21
    move v10, v9

    :goto_27
    :try_start_18
    iput-boolean v5, v14, Lorg/apache/xmlbeans/impl/schema/j;->B:Z

    iput-boolean v10, v14, Lorg/apache/xmlbeans/impl/schema/j;->C:Z
    :try_end_18
    .catch Li5/e0; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    const/16 v5, 0x11

    :try_start_19
    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v5

    check-cast v5, Li5/u$a;

    iput-object v5, v14, Lorg/apache/xmlbeans/impl/schema/j;->F:Li5/u$a;

    :cond_22
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    move v6, v9

    :goto_28
    if-ge v6, v5, :cond_23

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v7
    :try_end_19
    .catch Li5/e0; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    iget-object v8, v14, Lorg/apache/xmlbeans/impl/schema/j;->A:Ljava/util/LinkedHashSet;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Li5/e0; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :goto_29
    move-object v1, v0

    goto :goto_2a

    :catch_d
    move-exception v0

    goto :goto_29

    :goto_2a
    move-object v13, v1

    goto :goto_2c

    :cond_23
    :try_start_1b
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    new-array v6, v5, [Li5/v$a;

    :goto_2b
    if-ge v9, v5, :cond_24

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v7

    check-cast v7, Li5/v$a;

    aput-object v7, v6, v9
    :try_end_1b
    .catch Li5/e0; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_24
    :try_start_1c
    invoke-virtual {v6}, [Li5/v$a;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Li5/v$a;

    iput-object v5, v14, Lorg/apache/xmlbeans/impl/schema/m;->z:[Li5/v$a;
    :try_end_1c
    .catch Li5/e0; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :try_start_1d
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lorg/apache/xmlbeans/impl/schema/j;->E:Ljava/lang/String;
    :try_end_1d
    .catch Li5/e0; {:try_start_1d .. :try_end_1d} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    move-object v8, v14

    goto :goto_2f

    :catch_e
    move-exception v0

    goto :goto_29

    :catch_f
    move-exception v0

    goto :goto_29

    :catch_10
    move-exception v0

    goto :goto_29

    :catch_11
    move-exception v0

    goto :goto_29

    :catch_12
    move-exception v0

    goto :goto_29

    :catch_13
    move-exception v0

    goto :goto_29

    :catch_14
    move-exception v0

    goto :goto_29

    :catch_15
    move-exception v0

    goto :goto_29

    :cond_25
    :try_start_1e
    new-instance v1, Li5/e0;

    const-string v2, "Wrong particle type "

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v7, 0xb

    invoke-direct {v1, v2, v5, v6, v7}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
    :try_end_1e
    .catch Li5/e0; {:try_start_1e .. :try_end_1e} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :goto_2c
    :try_start_1f
    new-instance v1, Li5/e0;

    const-string v9, "Cannot load type from typesystem"

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0xe

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v1

    :goto_2d
    throw v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :goto_2e
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    throw v1

    :cond_26
    sget-object v4, Lj5/o;->a:Le5/g;

    invoke-interface {v4}, La5/d;->q()La5/b;

    move-result-object v4

    const-string v5, "Resolving type for handle {}"

    invoke-interface {v4, v2, v5}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/l0;->c()Lorg/apache/xmlbeans/impl/schema/r;

    move-result-object v8

    :goto_2f
    iget-object v3, v1, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v3

    :try_start_20
    iget-object v4, v1, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v8

    goto :goto_30

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_31

    :cond_27
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/r;

    move-object v4, v1

    :goto_30
    monitor-exit v3

    goto :goto_32

    :goto_31
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    throw v1

    :cond_28
    :goto_32
    return-object v4

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_21
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    throw v1
.end method

.method public save(Li5/c;)V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_filer:Li5/c;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/xmlbeans/impl/schema/v;->d:Z

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/v;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/r$a;

    invoke-virtual {v3}, Li5/r$a;->a()Li5/r;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->globalTypes()[Li5/c0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveTypesRecursively([Li5/c0;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->documentTypes()[Li5/c0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveTypesRecursively([Li5/c0;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->attributeTypes()[Li5/c0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveTypesRecursively([Li5/c0;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->globalElements()[Li5/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveGlobalElements([Li5/u;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->globalAttributes()[Li5/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveGlobalAttributes([Li5/t;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->modelGroups()[Li5/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveModelGroups([Li5/y;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->attributeGroups()[Li5/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveAttributeGroups([Li5/p;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->identityConstraints()[Li5/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveIdentityConstraints([Li5/v;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->redefinedGlobalTypes()[Li5/c0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveTypesRecursively([Li5/c0;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->redefinedModelGroups()[Li5/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveModelGroups([Li5/y;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->redefinedAttributeGroups()[Li5/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/z;->saveAttributeGroups([Li5/p;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->saveIndex()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->savePointers()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "filer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Incomplete SchemaTypeSystems cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveAttributeGroup(Li5/p;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->c(Li5/p;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->y(Li5/p;)V

    const/4 p0, 0x7

    invoke-virtual {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->M(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->y(Li5/p;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->B()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveAttributeGroups([Li5/p;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/z;->saveAttributeGroup(Li5/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveGlobalAttribute(Li5/t;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->b(Li5/t;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->x(Li5/w;)V

    invoke-interface {p1}, Li5/r;->H()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    const/4 p0, 0x4

    invoke-virtual {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->M(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->x(Li5/w;)V

    invoke-interface {p1}, Li5/r;->H()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->B()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveGlobalAttributes([Li5/t;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/z;->saveGlobalAttribute(Li5/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveGlobalElement(Li5/u;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->d(Li5/u;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Li5/z;

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/l0;->H(Li5/z;)V

    invoke-interface {p1}, Li5/r;->H()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-virtual {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->M(ILjava/lang/String;)V

    move-object p0, p1

    check-cast p0, Li5/z;

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/l0;->H(Li5/z;)V

    invoke-interface {p1}, Li5/r;->H()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->B()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveGlobalElements([Li5/u;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/z;->saveGlobalElement(Li5/u;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveIdentityConstraint(Li5/v;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->e(Li5/v;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->D(Li5/v;)V

    const/16 p0, 0x8

    invoke-virtual {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->M(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->D(Li5/v;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->B()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveIdentityConstraints([Li5/v;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/z;->saveIdentityConstraint(Li5/v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveIndex()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object p0

    const-string v1, "index"

    invoke-direct {v0, p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/l0;->E()V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->M(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/l0;->E()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/l0;->B()V

    return-void
.end method

.method public saveModelGroup(Li5/y;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->f(Li5/y;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->G(Li5/y;)V

    const/4 p0, 0x6

    invoke-virtual {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->M(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->G(Li5/y;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->B()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveModelGroups([Li5/y;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/z;->saveModelGroup(Li5/y;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public savePointerFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->M(ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/l0;->B()V

    return-void
.end method

.method public savePointers()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->globalElements()[Li5/u;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/element/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForComponents([Li5/r;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->globalAttributes()[Li5/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/attribute/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForComponents([Li5/r;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->modelGroups()[Li5/y;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/modelgroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForComponents([Li5/r;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->attributeGroups()[Li5/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/attributegroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForComponents([Li5/r;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->globalTypes()[Li5/c0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForComponents([Li5/r;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->identityConstraints()[Li5/v;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/identityconstraint/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForComponents([Li5/r;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_namespaces:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/namespace/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForNamespaces(Ljava/util/Set;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_typeRefsByClassname:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/javaname/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForClassnames(Ljava/util/Set;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->redefinedModelGroups()[Li5/y;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/redefinedmodelgroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForComponents([Li5/r;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->redefinedAttributeGroups()[Li5/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/redefinedattributegroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForComponents([Li5/r;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->redefinedGlobalTypes()[Li5/c0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/redefinedtype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointersForComponents([Li5/r;Ljava/lang/String;)V

    return-void
.end method

.method public savePointersForClassnames(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public savePointersForComponents([Li5/r;Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-static {p2}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lj5/i;->d(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/apache/xmlbeans/impl/schema/z;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public savePointersForNamespaces(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "xmlns"

    invoke-direct {v2, v0, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lj5/i;->d(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveToDirectory(Ljava/io/File;)V
    .locals 1

    new-instance v0, Ln5/a;

    invoke-direct {v0, p1}, Ln5/a;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/z;->save(Li5/c;)V

    return-void
.end method

.method public saveType(Li5/c0;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_localHandles:Lorg/apache/xmlbeans/impl/schema/v;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->g(Li5/c0;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/l0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->Q(Li5/c0;)V

    const/4 p0, 0x2

    invoke-virtual {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->M(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->Q(Li5/c0;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/l0;->B()V

    return-void
.end method

.method public saveTypesRecursively([Li5/c0;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Li5/c0;->f()Li5/f0;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/z;->saveType(Li5/c0;)V

    invoke-interface {v2}, Li5/c0;->v()[Li5/c0;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/z;->saveTypesRecursively([Li5/c0;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDependencies(Lorg/apache/xmlbeans/impl/schema/h;)V
    .locals 0

    return-void
.end method

.method public setIncomplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/z;->_incomplete:Z

    return-void
.end method

.method public typeForClassname(Ljava/lang/String;)Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_typeRefsByClassname:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/c0$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public typeForHandle(Ljava/lang/String;)Li5/c0;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/c0;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
