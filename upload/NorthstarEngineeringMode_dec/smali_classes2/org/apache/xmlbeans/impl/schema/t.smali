.class public final Lorg/apache/xmlbeans/impl/schema/t;
.super Lorg/apache/xmlbeans/impl/schema/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/t$a;
    }
.end annotation


# static fields
.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/Object;

.field public static final r:[Ljava/lang/String;

.field public static final s:[Ljava/lang/String;

.field public static final t:[Li5/d0;


# instance fields
.field public final a:Li5/m;

.field public final b:Ljava/lang/ClassLoader;

.field public final c:[Li5/d0;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/impl/schema/z;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/impl/schema/z;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/z;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/t;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/t;->q:Ljava/lang/Object;

    const-string v0, "org.apache.xmlbeans.metadata"

    const-string v1, "schemaorg_apache_xmlbeans"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/t;->r:[Ljava/lang/String;

    const-string v0, "sXMLCONFIG"

    const-string v1, "sXMLLANG"

    const-string v2, "sXMLSCHEMA"

    const-string v3, "sXMLTOOLS"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/t;->s:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Li5/d0;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/t;->t:[Li5/d0;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/t$a;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/t$a;-><init>()V

    const-class v1, Lj5/l;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lj5/l;->b:Lj5/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public constructor <init>([Li5/d0;Lj5/a;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/s;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/t;->t:[Li5/d0;

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->c:[Li5/d0;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/t;->a:Li5/m;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/t;->b:Ljava/lang/ClassLoader;

    if-eqz p4, :cond_1

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "schema"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lorg/apache/xmlbeans/impl/schema/t;->p:Ljava/lang/String;

    const-string p4, "/"

    const-string v0, "_"

    invoke-virtual {p2, p4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "/system"

    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const-class p3, Lq5/g;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p1

    :goto_1
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    :goto_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->h:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->i:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->j:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->k:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->l:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->m:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->n:Ljava/util/Map;

    return-void
.end method

.method public static a(Lj5/a;Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/t;
    .locals 15

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    if-nez v0, :cond_0

    const-class v3, Lq5/g;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/t;->r:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    sget-object v9, Lorg/apache/xmlbeans/impl/schema/t;->s:[Ljava/lang/String;

    array-length v10, v9

    move v11, v6

    :goto_2
    if-ge v11, v10, :cond_2

    aget-object v12, v9, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".system."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".TypeSystemHolder"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    :try_start_0
    invoke-static {v12, v13, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "typeSystem"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li5/d0;

    if-eqz v12, :cond_1

    invoke-virtual {v2, v12}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v12, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Li5/c2;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/t;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/t;->t:[Li5/d0;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Li5/d0;

    move-object v3, p0

    move-object/from16 v4, p2

    invoke-direct {v2, v1, p0, v0, v4}, Lorg/apache/xmlbeans/impl/schema/t;-><init>([Li5/d0;Lj5/a;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/z;
    .locals 4

    invoke-static {p1}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lj5/i;->d(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".xsb"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->a:Li5/m;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Li5/m;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/z;->crackPointer(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, p2

    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/t;->b:Ljava/lang/ClassLoader;

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_2

    move-object v1, p2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->crackPointer(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    :cond_3
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/t;->d:Ljava/util/Map;

    new-instance v0, Lw0/a;

    const/4 v3, 0x5

    invoke-direct {v0, v3, p0}, Lw0/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/z;

    if-eqz p1, :cond_4

    move-object p2, p1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_6

    sget-object p1, Lj5/o;->a:Le5/g;

    invoke-interface {p1}, La5/d;->q()La5/b;

    move-result-object v0

    const-string v3, "Finding type system {} on classloader"

    invoke-interface {v0, v1, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/z;

    if-nez v0, :cond_5

    invoke-interface {p1}, La5/d;->q()La5/b;

    move-result-object p1

    const-string v0, "Type system {}} not cached - consulting field"

    invoke-interface {p1, v1, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/schema/z;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/t;->e:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v0, :cond_6

    move-object p2, v0

    :cond_6
    :goto_3
    return-object p2
.end method

.method public final findAttributeGroupRef(Ljavax/xml/namespace/QName;)Li5/p$a;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/t;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Li5/p$a;

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/t;->c:[Li5/d0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v0, v2, v4

    invoke-interface {v0, p1}, Li5/d0;->findAttributeGroupRef(Ljavax/xml/namespace/QName;)Li5/p$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/attributegroup/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/xmlbeans/impl/schema/t;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Li5/d0;->findAttributeGroupRef(Ljavax/xml/namespace/QName;)Li5/p$a;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/t;->i:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public final findAttributeRef(Ljavax/xml/namespace/QName;)Li5/t$a;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/t;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Li5/t$a;

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/t;->c:[Li5/d0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v0, v2, v4

    invoke-interface {v0, p1}, Li5/d0;->findAttributeRef(Ljavax/xml/namespace/QName;)Li5/t$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/attribute/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/xmlbeans/impl/schema/t;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Li5/d0;->findAttributeRef(Ljavax/xml/namespace/QName;)Li5/t$a;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/t;->g:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public final findAttributeTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/t;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Li5/c0$a;

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/t;->c:[Li5/d0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v0, v2, v4

    invoke-interface {v0, p1}, Li5/d0;->findAttributeTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/attribute/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/xmlbeans/impl/schema/t;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Li5/d0;->findAttributeTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/t;->m:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public final findDocumentTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/t;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Li5/c0$a;

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/t;->c:[Li5/d0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v0, v2, v4

    invoke-interface {v0, p1}, Li5/d0;->findDocumentTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/element/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/xmlbeans/impl/schema/t;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Li5/d0;->findDocumentTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/t;->l:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public final findElementRef(Ljavax/xml/namespace/QName;)Li5/u$a;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/t;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Li5/u$a;

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/t;->c:[Li5/d0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v0, v2, v4

    invoke-interface {v0, p1}, Li5/d0;->findElementRef(Ljavax/xml/namespace/QName;)Li5/u$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/element/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/xmlbeans/impl/schema/t;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Li5/d0;->findElementRef(Ljavax/xml/namespace/QName;)Li5/u$a;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/t;->f:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public final findIdentityConstraintRef(Ljavax/xml/namespace/QName;)Li5/v$a;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/t;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Li5/v$a;

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/t;->c:[Li5/d0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v0, v2, v4

    invoke-interface {v0, p1}, Li5/d0;->findIdentityConstraintRef(Ljavax/xml/namespace/QName;)Li5/v$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/identityconstraint/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/xmlbeans/impl/schema/t;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Li5/d0;->findIdentityConstraintRef(Ljavax/xml/namespace/QName;)Li5/v$a;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/t;->j:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public final findModelGroupRef(Ljavax/xml/namespace/QName;)Li5/y$a;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/t;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Li5/y$a;

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/t;->c:[Li5/d0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v0, v2, v4

    invoke-interface {v0, p1}, Li5/d0;->findModelGroupRef(Ljavax/xml/namespace/QName;)Li5/y$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/modelgroup/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/xmlbeans/impl/schema/t;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Li5/d0;->findModelGroupRef(Ljavax/xml/namespace/QName;)Li5/y$a;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/t;->h:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public final findTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/t;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/t;->q:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Li5/c0$a;

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/t;->c:[Li5/d0;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v0, v2, v4

    invoke-interface {v0, p1}, Li5/d0;->findTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/type/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/xmlbeans/impl/schema/t;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Li5/d0;->findTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/t;->k:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method
