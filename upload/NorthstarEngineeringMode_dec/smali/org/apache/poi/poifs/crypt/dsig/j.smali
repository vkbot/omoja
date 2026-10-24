.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/poifs/crypt/dsig/j;->a:I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/j;->b:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/dsig/j;->a:I

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/j;->b:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setXadesDigestAlgo(Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setExecutionTime(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
