.class public final synthetic Lorg/apache/poi/ddf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ddf/EscherBSERecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ddf/EscherBSERecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ddf/h;->a:I

    iput-object p1, p0, Lorg/apache/poi/ddf/h;->b:Lorg/apache/poi/ddf/EscherBSERecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/h;->a:I

    iget-object p0, p0, Lorg/apache/poi/ddf/h;->b:Lorg/apache/poi/ddf/EscherBSERecord;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getUid()[B

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getPictureTypeWin32()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getUnused3()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipTypeWin32()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
