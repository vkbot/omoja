.class public final synthetic Lorg/apache/commons/compress/archivers/zip/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/m0;->a:I

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/m0;->b:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/m0;->a:I

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/m0;->b:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->b(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/ddf/EscherPropertyTypes;

    check-cast p1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->a(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherProperty;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/d1;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/v0;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->a(Lorg/apache/commons/compress/archivers/zip/d1;Lorg/apache/commons/compress/archivers/zip/v0;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
