import networkx as nx
import matplotlib.pyplot as plt
G = nx.Graph()
G.add_edges_from([(1,2), (4,3), (2,3), (3,5)])
shortest_path_length = nx.shortest_path_length(G, source=1, target=5)
print(f"Shortest Path Length from Node 1 to Node 4: {shortest_path_length}")
density = nx.density(G)
print(f"Graph Density: {density}")
ego_node = 3
egocentric_network = nx.ego_graph(G, ego_node, radius=1)
pos = nx.spring_layout(egocentric_network)
nx.draw(egocentric_network, pos, with_labels=True, node_color='skyblue', node_size=800, font_size=10, font_color='black')
plt.title(f"Egocentric Network of Node: {ego_node}")
plt.show()
print("Name: Abhishek Jaiswar")
print("Seat No: 31031523011")
