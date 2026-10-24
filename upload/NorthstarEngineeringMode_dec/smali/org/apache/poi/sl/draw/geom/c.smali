.class public final synthetic Lorg/apache/poi/sl/draw/geom/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/sl/draw/geom/c;->a:I

    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/sl/draw/geom/c;->a:I

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->c(Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/apache/poi/sl/draw/geom/PresetParser;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->f(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
