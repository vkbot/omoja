.class public final synthetic Ld6/d;
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

    iput p1, p0, Ld6/d;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Ld6/d;->a:I

    check-cast p1, Li5/g0;

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p1}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p1}, Li5/g0;->getCalendarValue()Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
