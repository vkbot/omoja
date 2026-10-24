.class public final synthetic Lorg/apache/poi/ddf/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ddf/EscherProperty;


# direct methods
.method public synthetic constructor <init>(ILorg/apache/poi/ddf/EscherProperty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ddf/z;->a:I

    iput-object p2, p0, Lorg/apache/poi/ddf/z;->b:Lorg/apache/poi/ddf/EscherProperty;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/z;->a:I

    iget-object p0, p0, Lorg/apache/poi/ddf/z;->b:Lorg/apache/poi/ddf/EscherProperty;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
