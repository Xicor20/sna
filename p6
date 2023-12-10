from ctypes import Structure
import networkx as nx
import matplotlib.pyplot as plt
def display_graph(graph, title):
    plt.figure()
    nx.draw(graph, with_labels=True)
    plt.title(title)
    plt.show()
def main():
    graph1 = nx.Graph()
    graph1.add_edges_from([(1,2),(2,3),(3,1)])
    graph2 = nx.Graph()
    graph2.add_edges_from([('A','B'),('B','C'),('C','A')])
    display_graph(graph1,"Graph 1")
    display_graph(graph2,"Graph 2")
    structure_equivalence = nx.is_isomorphic(graph1,graph2)
    print("Structural Equivalence:", structure_equivalence)
    automatic_equivalence = nx.faster_could_be_isomorphic(graph1, graph2)
    regular_equivalence = all
    (
    nx.degree(graph1) == nx.degree(graph2)
    )
    print("Regular Equivalence:", regular_equivalence)
if __name__== "__main__":
    main()
print("Name : Abhishek Jaiswar")
print("Roll No: 11")
