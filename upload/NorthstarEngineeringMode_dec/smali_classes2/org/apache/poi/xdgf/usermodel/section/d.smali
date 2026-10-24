.class public final synthetic Lorg/apache/poi/xdgf/usermodel/section/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xdgf/usermodel/section/d;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/xdgf/usermodel/section/d;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;-><init>(La3/m;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;-><init>(La3/m;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;-><init>(La3/m;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;-><init>(La3/m;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelMoveTo;

    check-cast p1, La3/m;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelMoveTo;-><init>(La3/m;)V

    return-object p0

    :pswitch_4
    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->getSectionType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
