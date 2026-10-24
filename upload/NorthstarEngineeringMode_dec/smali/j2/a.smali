.class public final Lj2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/a;->a:Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v4, p0, Lj2/a;->a:Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;

    invoke-static {v4}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p0

    invoke-virtual {p0}, Li2/a;->d()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    sget p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->h:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ln2/l;->a()Ln2/l;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sIsCaptureScreen = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Ln2/l;->h:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenCaptureUtil"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Ln2/l;->h:Z

    if-eqz p0, :cond_0

    const p0, 0x7f1201c6

    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Ln2/l;->h:Z

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1, p1}, Lu2/a;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object p0, v1, Ln2/l;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f1201c7

    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sdCardPath: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Ln2/l;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object p1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {p1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object p1

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {p0, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Ln2/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EmmcLog/Picture/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sdcardFilePath  "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "mkdirs = "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Ln2/k;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ln2/k;-><init>(Ln2/l;Ljava/io/File;Landroid/graphics/Bitmap;Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const p0, 0x7f12024f

    invoke-static {v4, p0, p1}, Lk2/d;->a(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method
