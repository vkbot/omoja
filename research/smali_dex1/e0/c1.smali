.class public final Le0/c1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 p2, 0x9

    .line 6
    .line 7
    new-array p2, p2, [B

    .line 8
    .line 9
    fill-array-data p2, :array_1a

    .line 10
    .line 11
    .line 12
    const/16 p4, 0x8

    .line 13
    .line 14
    new-array p4, p4, [B

    .line 15
    .line 16
    fill-array-data p4, :array_24

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2, p3}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :array_1a
    .array-data 1
        -0x67t
        -0xet
        0x44t
        -0xft
        0x59t
        0x39t
        -0x54t
        -0x4ft
        -0x4ct
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    nop

    .line 37
    :array_24
    .array-data 1
        -0x40t
        -0x41t
        0x25t
        -0x7ft
        0x2at
        0x75t
        -0x3bt
        -0x3et
    .end array-data
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    .line 1
    return-void
.end method
