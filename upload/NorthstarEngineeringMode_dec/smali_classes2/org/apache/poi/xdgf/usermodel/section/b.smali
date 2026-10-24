.class public final synthetic Lorg/apache/poi/xdgf/usermodel/section/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xdgf/usermodel/section/b;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/xdgf/usermodel/section/b;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    check-cast p1, La3/n;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    check-cast p1, La3/n;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    check-cast p1, La3/n;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    check-cast p1, La3/n;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    check-cast p1, La3/n;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    check-cast p1, La3/n;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
