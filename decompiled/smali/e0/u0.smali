.class public final synthetic Le0/u0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([ILjava/lang/String;[ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/u0;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Le0/u0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Le0/u0;->c:[I

    .line 9
    .line 10
    iput-object p4, p0, Le0/u0;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    .line 1
    sget-object p1, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Le0/x;->b()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    move v0, p1

    .line 12
    :goto_0
    iget-object v1, p0, Le0/u0;->a:[I

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-ge v0, v2, :cond_2

    .line 16
    .line 17
    aget v1, v1, v0

    .line 18
    .line 19
    if-ne p2, v1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object v1, p0, Le0/u0;->c:[I

    .line 26
    .line 27
    aget v2, v1, v0

    .line 28
    .line 29
    iget-object v3, p0, Le0/u0;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p2, v3, v2}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    aget p2, v1, v0

    .line 35
    .line 36
    invoke-static {}, Le0/x;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Le0/x;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x4

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Le0/u0;->d:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p2, p1}, Le0/x;->d(ILjava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-static {p2, p1}, Le0/x;->c(ILjava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    :goto_1
    return-void
.end method
