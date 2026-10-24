.class public final Ln2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Landroid/content/SharedPreferences;

.field public static c:Ln2/j;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Ln2/j;
    .locals 4

    const-class v0, Ln2/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ln2/j;->c:Ln2/j;

    if-nez v1, :cond_0

    new-instance v1, Ln2/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Ln2/j;->a:Landroid/content/Context;

    const-string v2, "mega.engineeringmode"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Ln2/j;->b:Landroid/content/SharedPreferences;

    sput-object v1, Ln2/j;->c:Ln2/j;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ln2/j;->c:Ln2/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b(IILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ln2/j;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p3, p1, p2}, Lt2/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method
