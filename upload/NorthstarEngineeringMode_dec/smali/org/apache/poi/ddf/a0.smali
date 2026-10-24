.class public final synthetic Lorg/apache/poi/ddf/a0;
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

    iput p1, p0, Lorg/apache/poi/ddf/a0;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/a0;->a:I

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
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    check-cast p1, La3/n;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

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
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    check-cast p1, La3/n;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;

    check-cast p1, La3/n;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GenericSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/ddf/EscherArrayProperty;

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(SI)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/ddf/EscherBoolProperty;

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
