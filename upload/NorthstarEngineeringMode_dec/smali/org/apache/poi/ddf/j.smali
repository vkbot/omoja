.class public final synthetic Lorg/apache/poi/ddf/j;
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

    iput p2, p0, Lorg/apache/poi/ddf/j;->a:I

    iput-object p1, p0, Lorg/apache/poi/ddf/j;->b:Lorg/apache/poi/ddf/EscherBSERecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/j;->a:I

    iget-object p0, p0, Lorg/apache/poi/ddf/j;->b:Lorg/apache/poi/ddf/EscherBSERecord;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getUsage()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getPictureTypeMacOS()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRemainingData()[B

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getUnused2()B

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
