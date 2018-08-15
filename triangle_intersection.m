function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise

x_min_P1 = min(P1(:,1));
x_max_P1 = max(P1(:,1));
y_min_P1 = min(P1(:,2));
y_max_P1 = max(P1(:,2));

x_min_P2 = min(P2(:,1));
x_max_P2 = max(P2(:,1));
y_min_P2 = min(P2(:,2));
y_max_P2 = max(P2(:,2));

if (x_min_P1 < x_min_P2)
    x1 = x_max_P1;
    x2 = x_min_P2;
else
    x1 = x_max_P2;
    x2 = x_min_P1;
end

if x1 > x2
    flag = true;
else
    flag = false;
end

end