grace=$(kubectl get po cassandra-sample-0 -o=jsonpath='{.spec.terminationGracePeriodSeconds}') \
  && kubectl delete statefulset -l app=cassandra-sample \
  && echo "Sleeping $grace" \
  && sleep $grace 
