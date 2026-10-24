.class public final Lorg/apache/xmlbeans/impl/schema/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/e0;->a()Lorg/apache/xmlbeans/impl/schema/h0;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/e0;->a()Lorg/apache/xmlbeans/impl/schema/h0;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/e0;->a()Lorg/apache/xmlbeans/impl/schema/h0;

    const/4 v0, 0x0

    new-array v0, v0, [Li5/c0;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/e0;->a:[Li5/c0;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public static a()Lorg/apache/xmlbeans/impl/schema/h0;
    .locals 2

    const-string v0, "preserve"

    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/n2;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/values/u;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/values/h2;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/h2;->setImmutable()V

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/h0;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/h0;-><init>(Li5/i0;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
