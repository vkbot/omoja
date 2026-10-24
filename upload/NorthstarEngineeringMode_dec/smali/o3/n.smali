.class public final Lo3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo3/o;

.field public static final b:[Ls3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo3/o;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo3/o;

    invoke-direct {v0}, Lo3/o;-><init>()V

    :goto_0
    sput-object v0, Lo3/n;->a:Lo3/o;

    const/4 v0, 0x0

    new-array v0, v0, [Ls3/b;

    sput-object v0, Lo3/n;->b:[Ls3/b;

    return-void
.end method
