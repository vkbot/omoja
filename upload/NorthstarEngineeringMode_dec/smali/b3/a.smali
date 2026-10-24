.class public final Lb3/a;
.super Lorg/apache/xmlbeans/impl/values/p0;
.source "SourceFile"

# interfaces
.implements La3/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "cp"

    const-string v2, "http://schemas.microsoft.com/office/visio/2012/main"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string/jumbo v1, "pp"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string/jumbo v1, "tp"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "fld"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
