.class public final synthetic Lorg/apache/poi/ss/formula/ptg/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/n;->a:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/n;->b:Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/n;->a:I

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/n;->b:Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->a(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
