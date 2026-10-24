.class public final synthetic Lorg/apache/poi/hssf/record/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/HyperlinkRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/t1;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/t1;->b:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/t1;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/t1;->b:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLinkOptions()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getMoniker()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->a(Lorg/apache/poi/hssf/record/HyperlinkRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
