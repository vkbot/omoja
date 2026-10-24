.class public final Li5/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
# The value of this static final field might be set in the static constructor
.field public static final a:Ljava/lang/String; = "org.apache.xmlbeans"

# The value of this static final field might be set in the static constructor
.field public static final b:Ljava/lang/String; = "unknown"

.field public static final c:Li5/l0$a;

.field public static final d:Lorg/apache/xmlbeans/impl/schema/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Li5/l0;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationTitle()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Li5/l0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Li5/l0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVendor()Ljava/lang/String;

    :cond_0
    new-instance v0, Li5/l0$a;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Li5/l0;->c:Li5/l0$a;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    sput-object v0, Li5/l0;->d:Lorg/apache/xmlbeans/impl/schema/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/apache/xmlbeans/impl/schema/t;
    .locals 5

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/t;->p:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lj5/l;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lj5/l;->b:Lj5/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    invoke-virtual {v2, v0}, Lj5/l;->b(Ljava/lang/ClassLoader;)Li5/d0;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/t;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/t;

    const/4 v2, 0x1

    new-array v2, v2, [Li5/d0;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/a;->n:Lorg/apache/xmlbeans/impl/schema/a;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0, v3}, Lorg/apache/xmlbeans/impl/schema/t;-><init>([Li5/d0;Lj5/a;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    const-class v0, Lj5/l;

    monitor-enter v0

    :try_start_1
    sget-object v2, Lj5/l;->b:Lj5/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-virtual {v2, v1}, Lj5/l;->a(Lorg/apache/xmlbeans/impl/schema/t;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-object v1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
