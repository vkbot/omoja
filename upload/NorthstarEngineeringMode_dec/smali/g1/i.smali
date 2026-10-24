.class public final synthetic Lg1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/LogLevelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/LogLevelActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/i;->a:Lcom/mega/engineeringmode/function/LogLevelActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    sget-object p1, Lcom/mega/engineeringmode/function/LogLevelActivity;->A:Ljava/lang/Byte;

    iget-object p0, p0, Lg1/i;->a:Lcom/mega/engineeringmode/function/LogLevelActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "logleveltest_android_level"

    const-string/jumbo v0, "persist.log.tag"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p2, "W"

    invoke-static {v0, p2}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p0

    const/4 p2, 0x4

    invoke-static {}, Ls2/a;->a()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p2, "V"

    invoke-static {v0, p2}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {}, Ls2/a;->a()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p2, "I"

    invoke-static {v0, p2}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p0

    const/4 p2, 0x3

    invoke-static {}, Ls2/a;->a()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p2, "E"

    invoke-static {v0, p2}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p0

    const/4 p2, 0x5

    invoke-static {}, Ls2/a;->a()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p2, "D"

    invoke-static {v0, p2}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {}, Ls2/a;->a()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Ln2/j;->b(IILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a02ec
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
