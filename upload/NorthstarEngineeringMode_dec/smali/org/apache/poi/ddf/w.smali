.class public final synthetic Lorg/apache/poi/ddf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ddf/EscherMetafileBlip;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ddf/EscherMetafileBlip;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ddf/w;->a:I

    iput-object p1, p0, Lorg/apache/poi/ddf/w;->b:Lorg/apache/poi/ddf/EscherMetafileBlip;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/w;->a:I

    iget-object p0, p0, Lorg/apache/poi/ddf/w;->b:Lorg/apache/poi/ddf/EscherMetafileBlip;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getCompressedSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getUncompressedSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
