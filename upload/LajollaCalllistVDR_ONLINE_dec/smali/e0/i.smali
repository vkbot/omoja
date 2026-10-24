.class public abstract Le0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le0/h;

.field public static final b:Le0/h;

.field public static final c:Le0/h;

.field public static final d:Le0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Le0/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le0/h;-><init>(Lg2/e;Z)V

    sput-object v0, Le0/i;->a:Le0/h;

    new-instance v0, Le0/h;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Le0/h;-><init>(Lg2/e;Z)V

    sput-object v0, Le0/i;->b:Le0/h;

    new-instance v0, Le0/h;

    sget-object v1, Lg2/e;->e:Lg2/e;

    invoke-direct {v0, v1, v2}, Le0/h;-><init>(Lg2/e;Z)V

    sput-object v0, Le0/i;->c:Le0/h;

    new-instance v0, Le0/h;

    invoke-direct {v0, v1, v3}, Le0/h;-><init>(Lg2/e;Z)V

    sput-object v0, Le0/i;->d:Le0/h;

    return-void
.end method
