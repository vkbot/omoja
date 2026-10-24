.class public interface abstract Lp/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp/l$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lp/l$a;->b:Ljava/util/Map;

    iput-object v1, v0, Lp/l$a;->a:Ljava/util/Map;

    new-instance v0, Lp/l;

    invoke-direct {v0, v1}, Lp/l;-><init>(Ljava/util/Map;)V

    sput-object v0, Lp/j;->a:Lp/l;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
