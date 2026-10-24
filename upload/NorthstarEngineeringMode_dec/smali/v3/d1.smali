.class public final Lv3/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/d;

.field public static final b:Lz1/d;

.field public static final c:Lz1/d;

.field public static final d:Lz1/d;

.field public static final e:Lz1/d;

.field public static final f:Lv3/n0;

.field public static final g:Lv3/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/d;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/d1;->a:Lz1/d;

    new-instance v0, Lz1/d;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/d1;->b:Lz1/d;

    new-instance v0, Lz1/d;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/d1;->c:Lz1/d;

    new-instance v0, Lz1/d;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/d1;->d:Lz1/d;

    new-instance v0, Lz1/d;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/d1;->e:Lz1/d;

    new-instance v0, Lv3/n0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv3/n0;-><init>(Z)V

    sput-object v0, Lv3/d1;->f:Lv3/n0;

    new-instance v0, Lv3/n0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv3/n0;-><init>(Z)V

    sput-object v0, Lv3/d1;->g:Lv3/n0;

    return-void
.end method
