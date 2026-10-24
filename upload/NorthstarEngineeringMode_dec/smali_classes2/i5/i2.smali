.class public interface abstract Li5/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/x1;


# static fields
.field public static final o0:Lorg/apache/xmlbeans/impl/schema/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/g0<",
            "Li5/i2;",
            ">;"
        }
    .end annotation
.end field

.field public static final p0:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/g0;

    const-string v1, "_BI_token"

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Li5/i2;->o0:Lorg/apache/xmlbeans/impl/schema/g0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Li5/i2;->p0:Li5/c0;

    return-void
.end method
