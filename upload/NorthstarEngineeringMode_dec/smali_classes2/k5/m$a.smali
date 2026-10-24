.class public final Lk5/m$a;
.super Lk5/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final w1:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lk5/m;-><init>(I)V

    iput p2, p0, Lk5/m$a;->w1:I

    return-void
.end method


# virtual methods
.method public final A(I)Ljava/lang/String;
    .locals 4

    iget p1, p0, Lk5/m$a;->w1:I

    iget v0, p0, Lk5/m;->c:I

    const-string v1, ""

    const-string v2, "\\"

    if-eqz v0, :cond_3

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lk5/m;->f1:Lk5/m$a;

    if-eq p0, v0, :cond_2

    sget-object v0, Lk5/m;->g1:Lk5/m$a;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_3
    const/16 p0, 0x9

    if-eq p1, p0, :cond_a

    const/16 p0, 0xa

    if-eq p1, p0, :cond_9

    const/16 p0, 0xc

    if-eq p1, p0, :cond_8

    const/16 p0, 0xd

    if-eq p1, p0, :cond_7

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_6

    const/16 p0, 0x2e

    if-eq p1, p0, :cond_5

    const/16 p0, 0x3f

    if-eq p1, p0, :cond_5

    const/16 p0, 0x5b

    if-eq p1, p0, :cond_5

    const/16 p0, 0x5c

    if-eq p1, p0, :cond_5

    const/16 p0, 0x7b

    if-eq p1, p0, :cond_5

    const/16 p0, 0x7c

    if-eq p1, p0, :cond_5

    packed-switch p1, :pswitch_data_0

    const/high16 p0, 0x10000

    if-lt p1, p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Landroidx/activity/result/a;->b(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\\v"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    const-string p0, "\\e"

    goto :goto_1

    :cond_7
    const-string p0, "\\r"

    goto :goto_1

    :cond_8
    const-string p0, "\\f"

    goto :goto_1

    :cond_9
    const-string p0, "\\n"

    goto :goto_1

    :cond_a
    const-string p0, "\\t"

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final p()I
    .locals 0

    iget p0, p0, Lk5/m$a;->w1:I

    return p0
.end method
