.class public interface abstract Ln/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ln/k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln/i;

    .line 2
    .line 3
    sget-object v0, Ln/i;->a:Ljava/util/Map;

    .line 4
    .line 5
    new-instance v1, Ln/k;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ln/k;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Ln/h;->a:Ln/k;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method
