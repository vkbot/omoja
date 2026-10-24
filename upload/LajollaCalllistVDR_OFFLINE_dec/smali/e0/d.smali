.class public final Le0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Le0/c;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Le0/c;II)V
    .locals 0

    iput p5, p0, Le0/d;->a:I

    iput-object p1, p0, Le0/d;->b:Ljava/lang/String;

    iput-object p2, p0, Le0/d;->c:Landroid/content/Context;

    iput-object p3, p0, Le0/d;->d:Le0/c;

    iput p4, p0, Le0/d;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Le0/f;
    .locals 4

    iget v0, p0, Le0/d;->a:I

    iget-object v1, p0, Le0/d;->c:Landroid/content/Context;

    iget-object v2, p0, Le0/d;->b:Ljava/lang/String;

    iget v3, p0, Le0/d;->e:I

    iget-object p0, p0, Le0/d;->d:Le0/c;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v1, p0, v3}, Le0/g;->a(Ljava/lang/String;Landroid/content/Context;Le0/c;I)Le0/f;

    move-result-object p0

    return-object p0

    :goto_0
    :try_start_0
    invoke-static {v2, v1, p0, v3}, Le0/g;->a(Ljava/lang/String;Landroid/content/Context;Le0/c;I)Le0/f;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-instance p0, Le0/f;

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Le0/f;-><init>(I)V

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le0/d;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Le0/d;->a()Le0/f;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Le0/d;->a()Le0/f;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
