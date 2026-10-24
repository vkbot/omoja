.class public interface abstract Lorg/apache/xmlbeans/XmlObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/j2;


# static fields
.field public static final y0:Lorg/apache/xmlbeans/impl/schema/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/g0<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final z0:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/g0;

    const-string v1, "_BI_anyType"

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/XmlObject;->y0:Lorg/apache/xmlbeans/impl/schema/g0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/apache/xmlbeans/XmlObject;->z0:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract compareTo(Ljava/lang/Object;)I
.end method

.method public abstract copy()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract isImmutable()Z
.end method

.method public abstract isNil()Z
.end method

.method public abstract schemaType()Li5/c0;
.end method

.method public abstract selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract valueHashCode()I
.end method
