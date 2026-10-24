.class public final synthetic Lorg/apache/poi/sl/draw/geom/b;
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

    iput p1, p0, Lorg/apache/poi/sl/draw/geom/b;->a:I

    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/sl/draw/geom/b;->a:I

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->a(Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->b(Lorg/apache/poi/sl/draw/geom/AdjustPoint;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p0, [Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->h([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
