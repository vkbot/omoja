.class public final synthetic Lorg/apache/poi/ddf/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ddf/EscherDggRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ddf/EscherDggRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ddf/t;->a:I

    iput-object p1, p0, Lorg/apache/poi/ddf/t;->b:Lorg/apache/poi/ddf/EscherDggRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/t;->a:I

    iget-object p0, p0, Lorg/apache/poi/ddf/t;->b:Lorg/apache/poi/ddf/EscherDggRecord;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumShapesSaved()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->a(Lorg/apache/poi/ddf/EscherDggRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
